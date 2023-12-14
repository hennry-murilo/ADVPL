#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zSalMin

    Faça um algoritmo que leia o valor do salário mínimo e o valor do salário de um usuário, calcule quantos salários mínimos esse  usuário ganha e imprima na tela o resultado. (Base para o Salário mínimo R$ 1.293,20).

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

    MsgInfo("Você recebe "+cValToChar(Round(nTotSal, 2))+" sálario(s)")

Return
