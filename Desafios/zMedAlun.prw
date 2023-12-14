#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zMedAlun

    Faça um algoritmo que leia quatro notas obtidas por um aluno, calcule a média das nota obtidas, imprima na tela o nome do aluno e  se o aluno foi aprovado ou reprovado. Para o aluno ser considerado aprovado sua média final deve ser maior ou igual a 7.

    @type       User Function
    @author     Henry Murilo
    @since      10/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zMedAlun()


	Local nNota1    := 4
	Local nNota2    := 3
	Local nNota3    := 1
    Local nNota4    := 1
	Local nMedia    := 0

	nMedia := (nNota1 + nNota2 + nNota3 + nNota4) / 4

    If nMedia >= 7
        MsgInfo("João foi aprovado")
    Else
        MsgInfo("João foi reprovado")
    Endif

Return
