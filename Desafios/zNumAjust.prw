#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zNumAjust

    Faça um algoritmo que leia um valor qualquer e imprima na tela com um reajuste de 5%.

    @type       User Function
    @author     Henry Murilo
    @since      09/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zNumAjust()

    Local nValor      := 500
    Local nReajuste   := 0
    Local nReajustado := 0

    nReajuste := (nValor * 0.05)

    nReajustado := (nValor + nReajuste)

    MsgAlert("O valor: "+cValToChar(nValor)+" foi reajustado para: "+cValToChar(nReajustado))

Return
