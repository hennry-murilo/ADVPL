#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zContKM

Fa�a um algoritmo que calcule a quantidade de litros de combust�vel gastos em uma viagem, sabendo que o carro faz 12km com um litro. Deve-se fornecer ao usu�rio o tempo que ser� gasto na viagem a sua velocidade m�dia, dist�ncia percorrida e a quantidade de litros utilizados para fazer a viagem.

@type       Function
@author     Henry Murilo
@since      01/12/2023
@version    V12
@database   MSSQL
@history    01/12/23, Henry Murilo
@param
@see
/*/

    User Function zContKM()

	Local oDlg
	Local oSay2
	Local oGet2
	Local nVarNum := 0


    // Cria uma caixa de di�logo com �rea util de 800x600  PIXELs
	DEFINE DIALOG oDlg TITLE "Divis�o" FROM 0,0 TO 200,310 PIXEL

    // Nao permite que a tecla ESC feche a caixa de dialogo 
	oDlg:lEscClose := .F.

    // Monta um GET para entrada de dados em vari�vel string
    //@ 18,10 SAY oSay1 PROMPT "Valor" SIZE 30,12 OF oDlg  PIXEL
    //@ 15,25 GET oGet1 VAR cVarStr PICTURE "@!" SIZE 80,12 OF oDlg  PIXEL

    // Monta um GET para entrada de dados num�ricos
	@ 19,20 SAY oSay2 PROMPT "Com quantos KM seu carro consome um litro?" SIZE 150,12 OF oDlg  PIXEL
	@ 30,60 GET oGet2 VAR nVarNum PICTURE "999999999" SIZE 10, 12  OF oDlg  PIXEL

    // Monta um objeto Radio, para escolha num�rica a partir de um array
    // Objeto tTimer(), configurado para disparar um CodeBlock
    // a cada 1 segundo ( 1000 milissegundos, tempo minimo )
	DEFINE TIMER oTimer INTERVAL 1000 ACTION ((@oTimer) ) OF oDlg

	DEFINE SBUTTON osBtn01  FROM 85 , 30  TYPE 01 ACTION zCalcKM(nVarNum) OF oDlg  ENABLE
	DEFINE SBUTTON osBtn02  FROM 85 , 100  TYPE 02 ACTION oDlg:End() OF oDlg  ENABLE

    // Na ativa��o do dialogo, iniciamos o timer
    // e colocamos uma funcao para permitir ou nao o fechamento/saida do dialogo
	ACTIVATE DIALOG oDlg CENTER ;
		ON INIT (oTimer:Activate()) ;
		VALID (AllowClose(Self,oTimer))

Return

/* -------------------------------------------------------------------
Fun��o AllowClose()
Verifica se alguem esta tentando fechar o dialogo.
Caso ela retorne .T., o di�logo � fechado, caso contr�rio
o di�logo permanece aberto. Caso o fechamento seja autorizado,
a fun��o desliga o timer, para evitar de khaver um disparo de timer
enquanto o di�logo est� sendo destru�do.
------------------------------------------------------------------- */

Static Function AllowClose(oDlg,oTimer)

    If MsgYesNo("Deseja encerrar a aplica��o ?")
	    oTimer:deactivate()
	Return .T.
    Endif

Return .F.

Static Function zCalcKm(nVarNum)

    Local nKMPerc     := 80
    Local nQtdLitros  := 0
    Local nTempoPerc  := 0

    nQtdLitros := (nKmPerc / nVarNum)

    nTempoPerc  := (nKmPerc * 1)

    MsgInfo("Em uma viagem de "+cValToChar(nKmPerc)+"KM, a quantidade de litros gasto pelo seu carro � de: "+cValToChar(Round(nQtdLitros, 2))+"L"+CRLF+"A dist�ncia percorrida �: "+cValToChar(nKmPerc)+"KM. "+CRLF+"O tempo percorrido foi de: "+cValToChar(Min2Hrs(nTempoPerc))+"h")
    
Return
