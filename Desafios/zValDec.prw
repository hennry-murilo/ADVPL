#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zValDec

    Faça um algoritmo que leia três valores inteiros diferentes e imprima na tela os valores em ordem decrescente.

    @type       User Function
    @author     Henry Murilo
    @since      10/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zValDec()

	Local aDados  := {}
	Local nPos    := 0
	Local cMsg    := ""

	aAdd(aDados, {10 ,    "Valor1"     })
	aAdd(aDados, {500,    "Valor2"     })
	aAdd(aDados, {5  ,    "Valor3"     })

	aSort(aDados, , , {|x, y| x[1] > y[1]})

	For nPos := 1 To Len(aDados)
		cMsg += cValToChar(aDados[nPos][2])+", código "+cValToChar(aDados[nPos][1])+"."+CRLF
	Next
	MsgInfo("Ordenação Decrescente: "+CRLF+cMsg, "Atenção")

Return
