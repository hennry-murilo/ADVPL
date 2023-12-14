#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zTabuVar

    Faça um algoritmo que receba um valor inteiro e imprima na tela a sua tabuada.

@type       User Function
@author     Henry Murilo
@since      27/11/2023
@version    V12
@database   MSSQL
@history    27/11/23, Henry Murilo
@param
@see
/*/

    User Function zTabuVar()

	Local oDlg
	Local oSay2
	Local oGet2
	Local oSayM

	Local nVarNum := 0
	Local nVarRadio := 1

	Local oMeter
	Local nMeterPos := 1

// Cria uma caixa de diálogo com área util de 800x600  PIXELs
	DEFINE DIALOG oDlg TITLE "Tabuada" FROM 0,0 TO 200,210 PIXEL

// Nao permite que a tecla ESC feche a caixa de dialogo 
	oDlg:lEscClose := .F.

// Monta um GET para entrada de dados em variável string
//@ 18,10 SAY oSay1 PROMPT "Valor" SIZE 30,12 OF oDlg  PIXEL
//@ 15,25 GET oGet1 VAR cVarStr PICTURE "@!" SIZE 80,12 OF oDlg  PIXEL

// Monta um GET para entrada de dados numéricos
	@ 19,13 SAY oSay2 PROMPT "Digite um número" SIZE 100,12 OF oDlg  PIXEL
	@ 15,60 GET oGet2 VAR nVarNum PICTURE "999999999" SIZE 10, 12  OF oDlg  PIXEL

// Monta um objeto Radio, para escolha numérica a partir de um array
// Objeto tTimer(), configurado para disparar um CodeBlock
// a cada 1 segundo ( 1000 milissegundos, tempo minimo )
	DEFINE TIMER oTimer INTERVAL 1000 ACTION ( UpdMeter(@nMeterPos,oMeter,oTimer,oSayM) ) OF oDlg

	DEFINE SBUTTON osBtn01  FROM 85 , 10  TYPE 01 ACTION zTabuVar(nVarNum, nVarRadio) OF oDlg  ENABLE
	DEFINE SBUTTON osBtn02  FROM 85 , 70  TYPE 02 ACTION oDlg:End() OF oDlg  ENABLE

// Na ativação do dialogo, iniciamos o timer
// e colocamos uma funcao para permitir ou nao o fechamento/saida do dialogo
	ACTIVATE DIALOG oDlg CENTER ;
		ON INIT (oTimer:Activate()) ;
		VALID (AllowClose(Self,oTimer))

Return

Static Function zTabuVar(nVarNum, nVarRadio)

    Local nCont   := 0
    Local nResult := 0
    Local cMsg    := ""
    
    For nCont := 1 To 10
        nResult := (nVarNum * nCont)
        cMsg += (cValToChar(nVarNum) + " x "+ cValToChar(nCont) + " = " + cValToChar(nResult) + "<br>")
    Next

    MsgInfo(cValToChar(cMsg))


Return

/*-------------------------------------------------------------------
Função UpdMeter()
Função chamada a cada 1 segundo pelo timer. Ela incrementa o contador do meter,
seta a nova posição do contador e atualiza o texto de um label logo abaixo
do meter com o valor atual do contador. Quando o contador passar de 1000,
o timer é desligado pela função
------------------------------------------------------------------- */

Static Function UpdMeter( nMeterPos , oMeter , oTimer , oSayM )

nMeterPos++

    If nMeterPos == 1000
	oTimer:Deactivate()
    Endif

Return

/* -------------------------------------------------------------------
Função AllowClose()
Verifica se alguem esta tentando fechar o dialogo.
Caso ela retorne .T., o diálogo é fechado, caso contrário
o diálogo permanece aberto. Caso o fechamento seja autorizado,
a função desliga o timer, para evitar de khaver um disparo de timer
enquanto o diálogo está sendo destruído.
------------------------------------------------------------------- */

Static Function AllowClose(oDlg,oTimer)

    If MsgYesNo("Deseja encerrar a aplicação ?")
	    oTimer:deactivate()
	Return .T.
    Endif

Return .F.

