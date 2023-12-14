#Include	"PROTHEUS.Ch"
#Include	"FWMVCDef.Ch"
#Include	"TOPCONN.Ch"

    /*/{Protheus.doc} zYears

Faça um algoritmo que leia o ano em que uma pessoa nasceu, imprima na tela quantos anos, meses e dias essa pessoa ja viveu.

@type       User Function
@author     Henry Murilo
@since      16/11/2023
@version    V12
@database   MSSQL
@history    16/11/23, Henry Murilo
@param
@see
/*/



User Function zYears()

    Local nDatNasc  := 1930

    Local nData      := Date()
    Local nDiaAtual  := Day(nData)
    Local nAnoAtual  := Year(nData)
    Local nMesAtual  := Month(nData)
    Local nIdadMes   := 0
    Local nIdadDia   := 0
    Local nIdadAnos  := 0
    Local nDiaTot    := 0
    Local nAnosCalc  := 0
    Local nMesCalc   := 0
    Local nDiaCalc   := 0

    nIdadAnos := (nAnoAtual - nDatNasc)
    nIdadMes  := (nMesAtual - 1)
    nIdadDia  := nDiaAtual 

    nDiaTot   := (nIdadAnos * 365) + (nIdadMes * 30) + nIdadDia

    nAnosCalc := (nDiaTot / 365)
    nMesCalc  := (nIdadAnos * 12)
    nDiaCalc  := (nIdadAnos * 365)

    MsgInfo("Voce viveu "+cValToChar(Int(nAnosCalc))+" anos, "+cValToChar(Round(nMesCalc, 0))+" meses e "+cValToChar(nDiaCalc)+" dias")
    
Return
