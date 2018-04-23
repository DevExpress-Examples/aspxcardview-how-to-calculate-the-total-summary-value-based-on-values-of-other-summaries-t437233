using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void ASPxCardView1_CustomSummaryCalculate(object sender, DevExpress.Data.CustomSummaryEventArgs e)
    {
        ASPxCardViewSummaryItem orderedUnits = (sender as ASPxCardView).TotalSummary["UnitsOnOrder"];
        ASPxCardViewSummaryItem averagePrice = (sender as ASPxCardView).TotalSummary["UnitPrice"];
        Int32 intOrderedUnits = Convert.ToInt32(((ASPxCardView)sender).GetTotalSummaryValue(orderedUnits));
        Int32 intAveragePrice = Convert.ToInt32(((ASPxCardView)sender).GetTotalSummaryValue(averagePrice));

        e.TotalValue = intOrderedUnits * intAveragePrice;
        
    }
}