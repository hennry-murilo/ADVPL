#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zTrocNum

Faça um algoritmo que receba um valor A e B, e troque o valor de A por B e o valor de B por A e imprima na tela os valores.

@type       User Function
@author     Henry Murilo
@since      16/11/2023
@version    V12
@database   MSSQL
@history    16/11/23, Henry Murilo
@param
@see
/*/



User Function zTrocNum()

    Local nValorA  := 10
    Local nValorB  := 17
    Local nTemp    := 0

    nTemp   := nValorA
    nValorA := nValorB
    nValorB := nTemp

    MsgInfo("Valor A: "+cValToChar(nValorA)+"<br>Valor B: "+cValToChar(nValorB))
    
Return
