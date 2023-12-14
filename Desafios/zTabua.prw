#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zTabua

    Faça um algoritmo que imprima na tela a tabuada de 1 até 10.

@type       User Function
@author     Henry Murilo
@since      27/11/2023
@version    V12
@database   MSSQL
@history    27/11/23, Henry Murilo
@param
@see
/*/

User Function zTabua()

    Local nNumero := 1
    Local nCont   := 0
    Local nResult := 0
    Local cMsg    := ""
    
    For nCont := 1 To 10
        nResult := (nNumero * nCont)
        cMsg += ("1 x "+ cValToChar(nCont) + " = " + cValToChar(nResult) + "<br>")
    Next

    MsgInfo(cValToChar(cMsg))


Return
