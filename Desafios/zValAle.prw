#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zValAle   

    Fa�a um algoritmo que mostre um valor aleat�rio entre�0�e�100.

@type       User Function
@author     Henry Murilo
@since      27/11/2023
@version    V12
@database   MSSQL
@history    27/11/23, Henry Murilo
@param
@see
/*/

User Function zValAle()

    MsgInfo(Randomize(0, 100))

Return
