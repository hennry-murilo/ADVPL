#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zVetABC

    Faça um algoritmo que leia os valores de A, B, C e em seguida imprima na tela a soma entre A e B e mostre se a soma é menor que C.

    @type       User Function
    @author     Henry Murilo
    @since      08/11/2023
    @version    V12
    @database   MSSQL
    @history    08/11/23, Henry Murilo
    @param      
    @see        
/*/

User Function zVetABC()

	Local nValorA := 2
	Local nValorB := 2
	Local nValorC := 5
	Local nTotal  := 0

	nTotal := nValorA + nValorB

	MsgAlert("A soma do Valor A + Valor B é: "+ Str(nTotal))

	If nTotal <= nValorC
		MsgAlert("O total é menor que o valor C")
    Else
	Endif

Return
