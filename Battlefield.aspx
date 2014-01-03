<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Battlefield.aspx.cs" Inherits="J_Dimension.Battlefield" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <p><span style="font-size: x-large"><strong>Battlefield</strong></span><br />
                
                Mech Management Application</p>
    <form id="form1" runat="server">
        
        &nbsp;<br />
        &nbsp;
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<table style="width:100%;">
            <tr>
                <td style="width: 225px; text-align: left;">
            <asp:Label ID="Label7" runat="server" Text="Your Lance:" Font-Bold="True" Font-Size="Small"></asp:Label>
                </td>
                <td rowspan="3" style="width: 354px">
                    <table id="tblUser" border="1" style="border:solid; border-width: thick; padding: 10px; margin: auto; border-color: #000080; width: 100%; background-color: #FFFFFF; height: 227px;">
                        <tr>
                            <td style="height: 124px; width: 169px">
                                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="User"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtUserLanceName" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 124px; width: 165px">
                                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Large" Text="ATTACK" ForeColor="#990000"></asp:Label>
                                <br />
                                <br />
                                
                               
                                        <asp:Label ID="lblUserAttack" runat="server" Font-Size="Medium"></asp:Label>
                                    
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 169px; height: 131px; text-align: center; vertical-align: middle;">
                                <asp:Label ID="Label14" runat="server" Font-Bold="True" Font-Size="Large" Text="Mechs" ForeColor="#996633"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblUserMargin" runat="server" Font-Size="Medium"></asp:Label>
                            </td>
                            <td style="height: 131px; width: 165px">
                                <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Size="Large" Text="DEFENSE" ForeColor="#006600"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblUserDefense" runat="server" Font-Size="Medium"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
                <td rowspan="3">
                    <table id="tblComp" border="1" style="border:solid; border-width: thick; padding: 10px; margin: auto; border-color: #000080; width: 100%; background-color: #FFFFFF; height: 227px;">
                        <tr>
                            <td style="height: 124px; width: 167px">
                                <asp:Label ID="Label16" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Comp"></asp:Label>
                                <br />
                                <asp:TextBox ID="txtCompLanceName" runat="server"></asp:TextBox>
                            </td>
                            <td style="height: 124px">
                                <asp:Label ID="Label17" runat="server" Font-Bold="True" Font-Size="Large" Text="ATTACK" ForeColor="#990000"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblCompAttack" runat="server" Font-Size="Medium"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 167px; height: 131px; text-align: center; vertical-align: middle;">
                                <asp:Label ID="Label19" runat="server" Font-Bold="True" Font-Size="Large" Text="Mechs" ForeColor="#996633"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblCompMargin" runat="server" Font-Size="Medium"></asp:Label>
                            </td>
                            <td style="height: 131px">
                                <asp:Label ID="Label21" runat="server" Font-Bold="True" Font-Size="Large" Text="DEFENSE" ForeColor="#006600"></asp:Label>
                                <br />
                                <br />
                                <asp:Label ID="lblCompDefense" runat="server" Font-Size="Medium"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 225px; text-align: left;">
            <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MechGameEntities" DefaultContainerName="MechGameEntities" EnableFlattening="False" EntitySetName="MechGroups"></asp:EntityDataSource>
            <asp:DropDownList ID="ddlLanceList" DataSourceID="EntityDataSource1" runat="server" AutoPostBack="true" DataTextField="Name" DataValueField="Id" Width="124px">
            </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 225px; text-align: left;">
                    
                            <br />
                            <br />
                    
                            <asp:Button ID="btnBattle" runat="server" OnClick="OnClickBattle" Text="Battle" Width="132px" Height="106px" />
                        
                    <br />
                    <br />
                    <br />
                    
                             <asp:Label ID="lblResult" runat="server" ForeColor="Red"></asp:Label>
                        
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 32px; font-size: x-large;">&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3" style="height: 32px; font-size: x-large;">&nbsp;</td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
       <br />
        <br />
        <p>
            &nbsp;</p>
    </form>



</asp:Content>
