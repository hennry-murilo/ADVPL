#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zSalProf

    Fa�a um algoritmo que efetue o c�lculo do sal�rio l�quido de um professor. As informa��es fornecidas ser�o: valor da hora aula, n�mero de aulas lecionadas no m�s e percentual de desconto do INSS. Imprima na tela o sal�rio l�quido final.

@type       Function
@author     Henry Murilo
@since      30/11/2023
@version    V12
@database   MSSQL
@history    30/11/23, Henry Murilo
@param
@see
/*/

User Function zSalProf()

    Local nSalarLiq   := 0
    Local nSalarFin   := 0
    Local nValHorAul  := 100 
    Local nNumAulas   := 6

    nSalarLiq := (nValHorAul * nNumAulas) 

    nSalarFin :=  nSalarLiq - (nSalarLiq * 0.10)


    MsgInfo("O sal�rio l�quido de um professor �: " + cValToChar(nSalarFin))

Return
