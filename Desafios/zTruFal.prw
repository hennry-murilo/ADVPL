#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zTruFal

    Faça um algoritmo que leia dois valores booleanos (lógicos) e determine se ambos são VERDADEIRO ou FALSO.

    @type       User Function
    @author     Henry Murilo
    @since      09/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zTruFal()

	Local lAprovado           := .T.
	Local lPassaAno           := .F.
	Local cMsg                := ""

	If lAprovado
		cMsg += "Foi aprovado e "
	Else
		cMsg += "Não foi aprovado e "
	Endif

	If lPassaAno
		cMsg += "passou de ano "
	Else
		cMsg += "não passou de ano "
	Endif

    MsgInfo(cMsg)

Return
