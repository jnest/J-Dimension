<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="True" CodeBehind="MechCreator.aspx.cs" Inherits="J_Dimension.MechCreator" %>
<%@ Import Namespace="J_Dimension" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">    
    <p><span style="font-size: x-large"><strong>Mech Builder</strong></span><br />
                
                Mech Management Application</p>
    
    <form runat="server">
        
        <br />
        
        <br />
        
        <table style="width: 100%;">
            <tr>
                <td style="width: 85px; font-size: small; text-align: left;"><strong>Add a Mech:</strong></td>
                <td style="width: 146px">&nbsp;</td>
                <td rowspan="5" style="width: 568px">
                            
                        <asp:Label ID="lblMechName" runat="server" style=""></asp:Label>
                            
                </td>
                <td>
                            <input id="btnViewMech" type="button" value="View Mechs" /></td>
            </tr>
            <tr>
                <td style="width: 85px; height: 49px; font-size: small; text-align: left;">Name:</td>
                <td style="width: 146px; height: 49px;">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td style="height: 49px"></td>
            </tr>
            <tr>
                <td style="width: 85px; height: 49px; text-align: left; font-size: small;">Weight:</td>
                <td style="width: 146px; height: 49px;">
        
        <asp:DropDownList ID="ddlWeight" runat="server" Height="25px" Width="122px">
            <asp:listitem>20</asp:listitem>
            <asp:listitem>25</asp:listitem>
            <asp:listitem>30</asp:listitem>
            <asp:listitem>35</asp:listitem>
            <asp:listitem>40</asp:listitem>
            <asp:listitem>45</asp:listitem>
            <asp:listitem>50</asp:listitem>
            <asp:listitem>55</asp:listitem>
            <asp:listitem>60</asp:listitem>
            <asp:listitem>65</asp:listitem>            
            <asp:listitem>70</asp:listitem>
            <asp:listitem>75</asp:listitem>
            <asp:listitem>80</asp:listitem>
            <asp:listitem>85</asp:listitem>
            <asp:listitem>90</asp:listitem>
            <asp:listitem>95</asp:listitem>
            <asp:listItem>100</asp:listItem>
        </asp:DropDownList>
        
                        </td>
                <td style="height: 49px">
                        <input id="btnSelect" type="button" value="Select" style="width: 111px; "/></td>
            </tr>
            <tr>
                <td style="width: 85px; height: 49px; text-align: left;"><span style="font-size: small">Faction</span>:</td>
                <td style="width: 146px; height: 49px;">
                    <asp:DropDownList ID="ddlFaction" runat="server" Height="25px" Width="122px">
                        <asp:listitem>Inner Sphere</asp:listitem>
                        <asp:listItem>Clan</asp:listItem>
                    </asp:DropDownList>
                        </td>
                <td style="height: 49px"><asp:DropDownList ID="ddlMechList" DataSourceID="EntityDataSource1" runat="server" DataTextField="Name" DataValueField="Id" AutoPostBack="false" EnableViewState="False" ViewStateMode="disabled" style="margin-left: 3px; margin-top: 3px; " Height="18px" Width="111px"> 
                            </asp:DropDownList>
                            
                        </td>
            </tr>
            <tr>
                <td style="width: 85px; height: 49px; text-align: left;">&nbsp;</td>
                <td style="width: 146px; height: 49px;"><asp:Button ID="btnSubmit" ClientIDMode="Static" runat="server" OnClick="OnClickSubmit" Text="Submit" Width="122px"  />
                        </td>
                <td style="height: 49px">&nbsp;</td>
            </tr>
        </table>    
        
        
        <p>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
                    </p>
        <p>
            Mech Templates List</p>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MechGameEntities" DefaultContainerName="MechGameEntities" EnableFlattening="False" EntitySetName="MechTemplates"></asp:EntityDataSource>
        <asp:GridView ID="gvMechs" DataSourceID="EntityDataSource1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White"></AlternatingRowStyle>
            <Columns>
                <asp:HyperLinkField NavigateUrl="http://www.google.com" Text="link">
                    <ItemStyle BackColor="white"></ItemStyle>
                </asp:HyperLinkField>
            </Columns>
            <EditRowStyle BackColor="#2461BF"></EditRowStyle>

            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></FooterStyle>

            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White"></HeaderStyle>

            <PagerStyle HorizontalAlign="Center" BackColor="#2461BF" ForeColor="White"></PagerStyle>

            <RowStyle BackColor="#EFF3FB"></RowStyle>

            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

            <SortedAscendingCellStyle BackColor="#F5F7FB"></SortedAscendingCellStyle>

            <SortedAscendingHeaderStyle BackColor="#6D95E1"></SortedAscendingHeaderStyle>

            <SortedDescendingCellStyle BackColor="#E9EBEF"></SortedDescendingCellStyle>

            <SortedDescendingHeaderStyle BackColor="#4870BE"></SortedDescendingHeaderStyle>
        </asp:GridView>
    </form>
</asp:Content>
