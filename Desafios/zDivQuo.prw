#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zDivQuo

    Faça um algoritmo que leia dois valores inteiros A e B, imprima na tela o quociente e o resto da divisão inteira entre eles.

@type       Function
@author     Henry Murilo
@since      28/11/2023
@version    V12
@database   MSSQL
@history    30/11/23, Henry Murilo
@param
@see
/*/

User Function zDivQuo()

	Local oDlg
	Local oSay2
	Local oGet2
    Local oGet3
	Local nVarNum := 0
    Local nVarNum2 := 0


    // Cria uma caixa de diálogo com área util de 800x600  PIXELs
	DEFINE DIALOG oDlg TITLE "Divisão" FROM 0,0 TO 200,310 PIXEL

    // Nao permite que a tecla ESC feche a caixa de dialogo 
	oDlg:lEscClose := .F.

    // Monta um GET para entrada de dados em variável string
    //@ 18,10 SAY oSay1 PROMPT "Valor" SIZE 30,12 OF oDlg  PIXEL
    //@ 15,25 GET oGet1 VAR cVarStr PICTURE "@!" SIZE 80,12 OF oDlg  PIXEL

    // Monta um GET para entrada de dados numéricos
	@ 19,10 SAY oSay2 PROMPT "Digite dois números" SIZE 100,12 OF oDlg  PIXEL
	@ 15,60 GET oGet2 VAR nVarNum PICTURE "999999999" SIZE 10, 12  OF oDlg  PIXEL
	@ 15,100 GET oGet3 VAR nVarNum2 PICTURE "999999999" SIZE 10, 12  OF oDlg  PIXEL

    // Monta um objeto Radio, para escolha numérica a partir de um array
    // Objeto tTimer(), configurado para disparar um CodeBlock
    // a cada 1 segundo ( 1000 milissegundos, tempo minimo )
	DEFINE TIMER oTimer INTERVAL 1000 ACTION ((@oTimer) ) OF oDlg

	DEFINE SBUTTON osBtn01  FROM 85 , 30  TYPE 01 ACTION zDivSao2(nVarNum, nVarNum2) OF oDlg  ENABLE
	DEFINE SBUTTON osBtn02  FROM 85 , 100  TYPE 02 ACTION oDlg:End() OF oDlg  ENABLE

    // Na ativação do dialogo, iniciamos o timer
    // e colocamos uma funcao para permitir ou nao o fechamento/saida do dialogo
	ACTIVATE DIALOG oDlg CENTER ;
		ON INIT (oTimer:Activate()) ;
		VALID (AllowClose(Self,oTimer))

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


Return

Static Function zDivSao2(nVarNum, nVarNum2)

    Local nQuociente := 0
    Local nResto     := 0

    //Pega o resultado da divisão dos dois valores (quociente).
    nQuociente = (nVarNum / nVarNum2)

    //Pega o resto da divisão dos dois valores com o operdador %.
    nResto     = (nVarNum % nVarNum2)
    
    MsgInfo("O quociente da divisão dos números "+ cValToChar(nVarNum) + " e " + cValToChar(nVarNum2) + " é: " + cValToChar(Int(nQuociente)) + "<br> O resto da divisão é: " + cValToChar(nResto))

Return
