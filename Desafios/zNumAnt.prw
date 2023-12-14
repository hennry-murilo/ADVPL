#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

/*/{Protheus.doc} zNumAnt

    Faça um algoritmo que receba um número inteiro e imprima na tela o seu antecessor e o seu sucessor.

    @type       User Function
    @author     Henry Murilo
    @since      09/11/2023
    @version    V12
    @database   MSSQL
    @history    09/11/23, Henry Murilo
    @param      
    @see  

/*/

User Function zNumAnt()

	Local nNumero := 5
    Local nAnt    := 0
    Local nSuc    := 0

    nAnt := (nNumero - 1) 
    nSuc := (nNumero + 1)

    MsgAlert("O ANTECESSOR do número "+cValtoChar(nNumero)+" é "+cValtoChar(nAnt)+" e o seu SUCESSOR é o número "+cValtoChar(nSuc))

Return
