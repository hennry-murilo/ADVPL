#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zMultAB

    Faça um algoritmo que leia dois valores inteiros A e B, se os valores de A e B forem iguais, deverá somar os dois valores, caso contrário devera multiplicar A por B. Ao final de qualquer um dos cálculos deve-se atribuir o resultado a uma variável C e imprimir seu valor na tela.

    @type       User Function
    @author     Henry Murilo
    @since      09/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zMultAb()

	Local nValorA := 2
	Local nValorB := 3
	Local nTotalC := 0

	If (nValorA == nValorB)
		nTotalC := (nValorA + nValorB)
		MsgAlert("O valor final de ValorA+ValorB é: " + cValtoChar(nTotalC))
	Else
		nTotalC := (nValorA * nValorB)
		MsgAlert("O valor final de ValorA+ValorB é: " + cValtoChar(nTotalC))
	Endif


Return
