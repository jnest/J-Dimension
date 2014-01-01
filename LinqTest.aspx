<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LinqTest.aspx.cs" Inherits="J_Dimension.LinqTest" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <form id="form1" runat="server">
        <asp:GridView ID="gridMech" runat="server" DataSourceID="sourceMech" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" AutoGenerateColumns="False" DataKeyNames="Id">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Attack" HeaderText="Attack" SortExpression="Attack" />
                <asp:BoundField DataField="Defense" HeaderText="Defense" SortExpression="Defense" />
                <asp:BoundField DataField="MechGroupId" HeaderText="MechGroupId" SortExpression="MechGroupId" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <asp:EntityDataSource ID="sourceMech" runat="server" ConnectionString="name=MechGameEntities" DefaultContainerName="MechGameEntities" EnableFlattening="False" EntitySetName="Meches">
        </asp:EntityDataSource>
    </form>

</asp:Content>
