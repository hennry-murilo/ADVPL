#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zImpPar

Fa�a um algoritmo para receber um n�mero qualquer e imprimir na tela se o n�mero � par ou �mpar, positivo ou negativo.

@type       User Function
@author     Henry Murilo
@since      09/11/2023
@version    V12
@database   MSSQL
@history    09/11/23, Henry Murilo
@param
@see
/*/

User Function zImpPar()

	Local nNumero := 8
	Local cMsg    := ""

	If (nNumero % 2) == 0
		cMsg += "O num�ro "+cValtoChar(nNumero)+" � par "
	Else
		cMsg += "O num�ro"+cValtoChar(nNumero)+" � impar "
	Endif

	If (nNumero < 0)
		cMsg += "e negativo"
	Else
		cMsg += "e positivo"
	Endif

	MsgAlert(cMsg)

Return
