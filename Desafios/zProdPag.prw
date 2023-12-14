#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"
#INCLUDE    "TOTVS.CH"

/*/{Protheus.doc} zProdPag

    Faça um algoritmo que leia o valor de um produto e determine o valor que deve ser pago, conforme a escolha da forma de pagamento pelo comprador e imprima na tela o valor final do produto a ser pago. Utilize os códigos da tabela de condições de pagamento para efetuar o cálculo adequado.

    @type       User Function
    @author     Henry Murilo
    @since      10/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zProdPag()

	Local oDlg
	Local oSay2
	Local oGet2
	Local oSayM

	Local nVarNum := 0
	Local nVarRadio := 1

	Local oMeter
	Local nMeterPos := 1

// Cria uma caixa de diálogo com área util de 800x600  PIXELs
	DEFINE DIALOG oDlg TITLE "Formas de Pagamento" FROM 0,0 TO 200,480 PIXEL

// Nao permite que a tecla ESC feche a caixa de dialogo 
	oDlg:lEscClose := .F.

// Monta um GET para entrada de dados em variável string
//@ 18,10 SAY oSay1 PROMPT "Valor" SIZE 30,12 OF oDlg  PIXEL
//@ 15,25 GET oGet1 VAR cVarStr PICTURE "@!" SIZE 80,12 OF oDlg  PIXEL

// Monta um GET para entrada de dados numéricos
	@ 18,10 SAY oSay2 PROMPT "Valor" SIZE 30,12 OF oDlg  PIXEL
	@ 15,25 GET oGet2 VAR nVarNum PICTURE "999999999" SIZE 80, 12  OF oDlg  PIXEL

// Monta um objeto Radio, para escolha numérica a partir de um array
// Objeto tTimer(), configurado para disparar um CodeBlock
// a cada 1 segundo ( 1000 milissegundos, tempo minimo )
	DEFINE TIMER oTimer INTERVAL 1000 ACTION ( UpdMeter(@nMeterPos,oMeter,oTimer,oSayM) ) OF oDlg

	DEFINE SBUTTON osBtn01  FROM 85 , 05  TYPE 01 ACTION zValPrec(nVarNum, nVarRadio) OF oDlg  ENABLE
	DEFINE SBUTTON osBtn02  FROM 85 , 45  TYPE 02 ACTION oDlg:End() OF oDlg  ENABLE

// Na ativação do dialogo, iniciamos o timer
// e colocamos uma funcao para permitir ou nao o fechamento/saida do dialogo
	ACTIVATE DIALOG oDlg CENTER ;
		ON INIT (oTimer:Activate()) ;
		VALID (AllowClose(Self,oTimer))

Return

Static Function zValPrec(nVarNum, nVarRadio)

	Local nPrecFinal := 0

	If nVarRadio == 1
		nPrecFinal := nVarNum - (nVarNum * 0.15)
	Elseif nVarRadio == 2
		nPrecFinal := nVarNum - (nVarNum * 0.10)
	ElseIf nVarRadio == 3
		MsgInfo("O valor final a ser pago é: "+ cValToChar(nVarNum)+" parcelado em duas vezes sem juros. <br> O valor de cada parcela é: " + cValToChar(nVarNum / 2))
		Return
	ElseIf nVarRadio == 4
		nPrecFinal := nVarNum + (nVarNum * 0.10)
		MsgInfo("O valor final a ser pago é: "+ cValToChar(nVarNum)+" parcelado em três vezes com juros de 10%. <br> O valor de cada parcela é: " + cValToChar(nPrecFinal / 4))
	Endif

	MsgInfo("O valor final a ser pago é: "+ cValToChar(nPrecFinal))

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
