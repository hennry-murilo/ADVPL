#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zMedNot

    Faça um algoritmo que leia três notas obtidas por um aluno, e imprima na tela a média das notas.

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

	MsgInfo("A média de notas do aluno é: "+cValToChar(Round(nMedia, 2)))

Return
