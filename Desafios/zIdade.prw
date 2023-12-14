#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zIdade

Faça algoritmo que leia o nome e a idade de uma peso e imprima na tela o nome da pessoa e se ela é maior ou menor de idade. 

@type       User Function
@author     Henry Murilo
@since      11/11/2023
@version    V12
@database   MSSQL
@history    11/11/23, Henry Murilo
@param
@see
/*/



User Function zIdade()

    Local cNome  := "Henry"
    Local nIdade := 17

    If nIdade >= 18
        MsgAlert(cNome + " é maior de idade.")
    Else
        MsgAlert(cNome + " é menor de idade.")
    Endif 
    
Return
