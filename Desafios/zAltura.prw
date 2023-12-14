#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zAltura

Francisco tem 1,50m e cresce 2 centímetros por ano, enquanto Sara tem 1,10m e cresce 3 centímetros por ano. Faça um algoritmo que calcule e imprima na tela em quantos anos serão necessários para que Francisco seja maior que Sara.

@type       User Function
@author     Henry Murilo
@since      24/11/2023
@version    V12
@database   MSSQL
@history    24/11/23, Henry Murilo
@param
@see
/*/

User Function zAltura()

	Local nAltFran  := 1.50
	Local nCrecFran := 0.02
	Local nAltSara  := 1.10
	Local nCrecSara := 0.03
    Local nAnos     := 0

	While (nAltSara <= nAltFran)
		nAltFran += nCrecFran
		nAltSara += nCrecSara
        nAnos += 1
	Enddo

Return
