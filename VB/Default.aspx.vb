Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxCardView1_CustomSummaryCalculate(ByVal sender As Object, ByVal e As DevExpress.Data.CustomSummaryEventArgs)
        Dim orderedUnits As ASPxCardViewSummaryItem = (TryCast(sender, ASPxCardView)).TotalSummary("UnitsOnOrder")
        Dim averagePrice As ASPxCardViewSummaryItem = (TryCast(sender, ASPxCardView)).TotalSummary("UnitPrice")
        Dim intOrderedUnits As Int32 = Convert.ToInt32(DirectCast(sender, ASPxCardView).GetTotalSummaryValue(orderedUnits))
        Dim intAveragePrice As Int32 = Convert.ToInt32(DirectCast(sender, ASPxCardView).GetTotalSummaryValue(averagePrice))

        e.TotalValue = intOrderedUnits * intAveragePrice

    End Sub
End Class