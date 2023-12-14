#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zGraus

Faça um algoritmo que leia uma temperatura em Fahrenheit e calcule a temperatura correspondente em grau Celsius. Imprima na tela as duas temperaturas.    

@type       User Function
@author     Henry Murilo
@since      24/11/2023
@version    V12
@database   MSSQL
@history    24/11/23, Henry Murilo
@param
@see
/*/

User Function zGraus()

    Local nGrauFah   := 77
    Local nConvCel   := 0

    nConvCel := (nGrauFah - 32) * (5 / 9 )

    MsgInfo("Temperatura Fahrenheit : "+cValToChar(nGrauFah)+"<br>Temperatura em Celsius: "+cValToChar(nConvCel))

Return
