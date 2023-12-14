#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zSalProf

    Faça um algoritmo que efetue o cálculo do salário líquido de um professor. As informações fornecidas serão: valor da hora aula, número de aulas lecionadas no mês e percentual de desconto do INSS. Imprima na tela o salário líquido final.

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


    MsgInfo("O salário líquido de um professor é: " + cValToChar(nSalarFin))

Return
