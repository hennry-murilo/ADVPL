#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zMedNot

    Fa�a um algoritmo que leia tr�s notas obtidas por um aluno, e imprima na tela a m�dia�das�notas.

    @type       User Function
    @author     Henry Murilo
    @since      10/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zMedNot()

	Local nNota1    := 5
	Local nNota2    := 1
	Local nNota3    := 8
	Local nMedia := 0

	nMedia := (nNota1 + nNota2 + nNota3) / 3

	MsgInfo("A m�dia de notas do aluno �: "+cValToChar(Round(nMedia, 2)))

Return
