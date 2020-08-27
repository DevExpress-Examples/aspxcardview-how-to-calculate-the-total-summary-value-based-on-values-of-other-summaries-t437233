<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register assembly="DevExpress.Web.v15.2, Version=15.2.20.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <dx:ASPxCardView ID="ASPxCardView1" runat="server" OnCustomSummaryCalculate="ASPxCardView1_CustomSummaryCalculate" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" KeyFieldName="ProductID">
            <Settings ShowSummaryPanel="True" />
            <TotalSummary>
                <dx:ASPxCardViewSummaryItem SummaryType="Average" FieldName="UnitPrice" />
                <dx:ASPxCardViewSummaryItem SummaryType="Average" FieldName="UnitsOnOrder" />
                <dx:ASPxCardViewSummaryItem SummaryType="Custom" DisplayFormat="Average Sum ={0}" />
            </TotalSummary>
            <Columns>
                <dx:CardViewTextColumn FieldName="ProductID" ReadOnly="True" Visible="False">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ProductName" VisibleIndex="0">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitPrice" VisibleIndex="1">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsInStock" VisibleIndex="2">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="UnitsOnOrder" VisibleIndex="3">
                </dx:CardViewTextColumn>
                <dx:CardViewTextColumn FieldName="ReorderLevel" VisibleIndex="4">
                </dx:CardViewTextColumn>
                <dx:CardViewCheckColumn FieldName="Discontinued" VisibleIndex="5">
                </dx:CardViewCheckColumn>
            </Columns>
        </dx:ASPxCardView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|\nwind.mdb;Persist Security Info=True" ProviderName="System.Data.OleDb" SelectCommand="SELECT [ProductID], [ProductName], [UnitPrice], [UnitsInStock], [UnitsOnOrder], [ReorderLevel], [Discontinued] FROM [Products]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>