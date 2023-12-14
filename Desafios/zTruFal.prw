#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zTruFal

    Fa�a um algoritmo que leia dois valores booleanos (l�gicos) e determine se ambos s�o VERDADEIRO ou FALSO.

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
		cMsg += "N�o foi aprovado e "
	Endif

	If lPassaAno
		cMsg += "passou de ano "
	Else
		cMsg += "n�o passou de ano "
	Endif

    MsgInfo(cMsg)

Return
