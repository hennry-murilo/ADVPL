#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zSalMin

    Fa�a um algoritmo que leia o valor do sal�rio m�nimo e o valor do sal�rio de um usu�rio, calcule quantos sal�rios m�nimos esse  usu�rio ganha e imprima na tela o resultado. (Base para o Sal�rio m�nimo�R$�1.293,20).

    @type       User Function
    @author     Henry Murilo
    @since      09/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zSalMin()

	Local nSalario    := 5000
	Local nSalaMin    := 1293
	Local nTotSal     := 0

    nTotSal += (nSalario / nSalaMin)

    MsgInfo("Voc� recebe "+cValToChar(Round(nTotSal, 2))+" s�lario(s)")

Return
