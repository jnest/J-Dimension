<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="LanceBuilder.aspx.cs" Inherits="J_Dimension.LanceBuilder" %>
<%@ Import Namespace="J_Dimension" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Content" runat="server">

    <p><span style="font-size: x-large"><strong>Lance Builder</strong></span><br />
                
                Mech Management Application</p>

            <form id="form1" runat="server">
                
                
                <br />
                <br />
                <table style="width:100%;">
                    <tr>
                        <td style="vertical-align: middle; height: 9px;" colspan="3"><strong style="vertical-align: middle"><span style="font-size: small; vertical-align: middle;">Lance Name:<br />
                            </span></strong>
                <asp:TextBox ID="txtLanceName" runat="server"></asp:TextBox>
                        </td>
                        <td style="width: 171px; height: 9px">
                            &nbsp;</td>
                        <td style="height: 9px; width: 165px;"></td>
                        <td style="height: 9px; width: 164px;">&nbsp;</td>
                        <td style="height: 9px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align: middle; height: 49px;" colspan="3">
                <asp:Label ID="Label1" runat="server" Text="Lancemate 1" style="font-size: small"></asp:Label>
                            <br />
                <asp:DropDownList ID="ddlLancemate1" DataSourceID="EntityDataSource2" runat="server" DataTextField="Name" DataValueField="Id" Width="100px" Height="25px">
                </asp:DropDownList>
                        </td>
                        <td style="width: 171px; height: 49px">
                <asp:Label ID="Label2" runat="server" Text="Lancemate 2" style="font-size: small"></asp:Label>
                <asp:DropDownList ID="ddlLancemate2" DataSourceID="EntityDataSource2" runat="server" DataTextField="name" DataValueField="id" Height="25px" Width="100px">
                </asp:DropDownList>
                        </td>
                        <td style="height: 49px; width: 165px;">
                <asp:Label ID="Label3" runat="server" Text="Lancemate 3" style="font-size: small"></asp:Label>
                            <br />
                <asp:DropDownList ID="ddlLancemate3" DataSourceID="EntityDataSource2" runat="server" DataTextField="name" DataValueField="id" Height="25px" Width="100px">
                </asp:DropDownList>
                        </td>
                        <td style="height: 49px; width: 164px;">
                <asp:Label ID="Label4" runat="server" Text="Lancemate 4" style="font-size: small"></asp:Label>
                            <br />
                <asp:DropDownList ID="ddlLancemate4" DataSourceID="EntityDataSource2" runat="server" DataTextField="name" DataValueField="id" Width="100px" Height="25px">
                </asp:DropDownList>
                                
                        </td>
                        <td style="height: 49px">&nbsp;</td>
                    </tr>
                    <tr>
                          
                        <td style="vertical-align: middle; text-align: left; width: 78px; height: 49px;">
                            Range:</td>
                        <td style="vertical-align: middle; width: 131px; height: 49px;">
                            <asp:DropDownList ID="ddlRange1" runat="server">
                                <asp:Listitem>Long</asp:Listitem>
                                <asp:Listitem>Medium</asp:Listitem>
                                <asp:Listitem>Short</asp:Listitem>
                            </asp:DropDownList>
                        </td>
                        <td style="vertical-align: middle; text-align: left; width: 64px; height: 49px;">
                            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                            <asp:UpdatePanel ID="UpdatePanel" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnRange" runat="server" Text="All" OnClick="btnRange_Click" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td style="width: 171px; height: 49px">                            
                            <asp:UpdatePanel ID="UpdatePanel1" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnRange" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlRange2" runat="server">
                                            <asp:Listitem>Long</asp:Listitem>
                                            <asp:Listitem>Medium</asp:Listitem>
                                            <asp:Listitem>Short</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>                                 
                        </td>
                        <td style="height: 49px; width: 165px;">
                            <asp:UpdatePanel ID="UpdatePanel2" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnRange" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlRange3" runat="server">
                                            <asp:Listitem>Long</asp:Listitem>
                                            <asp:Listitem>Medium</asp:Listitem>
                                            <asp:Listitem>Short</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px; width: 164px;">
                            <asp:UpdatePanel ID="UpdatePanel3" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnRange" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlRange4" runat="server">
                                            <asp:Listitem>Long</asp:Listitem>
                                            <asp:Listitem>Medium</asp:Listitem>
                                            <asp:Listitem>Short</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px">&nbsp;</td>
                        
                    </tr>

                    <tr>
                        <td style="vertical-align: middle; text-align: left; width: 78px; height: 49px;">
                            Speed:</td>
                        <td style="vertical-align: middle; width: 131px; height: 49px;">
                            <asp:DropDownList ID="ddlSpeed1" runat="server">
                                <asp:Listitem>Slow</asp:Listitem>
                                <asp:Listitem>Average</asp:Listitem>
                                <asp:Listitem>Fast</asp:Listitem>
                            </asp:DropDownList>
                        </td>
                        <td style="vertical-align: middle; text-align: left; width: 64px; height: 49px;">
                            <asp:UpdatePanel ID="UpdatePanel4" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnSpeed" runat="server" Text="All" OnClick="btnSpeed_Click" />
                                </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="width: 171px; height: 49px">
                            <asp:UpdatePanel ID="UpdatePanel5" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnSpeed" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlSpeed2" runat="server">
                                            <asp:Listitem>Slow</asp:Listitem>
                                            <asp:Listitem>Average</asp:Listitem>
                                            <asp:Listitem>Fast</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px; width: 165px;">
                            <asp:UpdatePanel ID="UpdatePanel6" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnSpeed" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlSpeed3" runat="server">
                                            <asp:Listitem>Slow</asp:Listitem>
                                            <asp:Listitem>Average</asp:Listitem>
                                            <asp:Listitem>Fast</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px; width: 164px;">
                            <asp:UpdatePanel ID="UpdatePanel7" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnSpeed" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlSpeed4" runat="server">
                                            <asp:Listitem>Slow</asp:Listitem>
                                            <asp:Listitem>Average</asp:Listitem>
                                            <asp:Listitem>Fast</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align: middle; text-align: left; width: 78px; height: 49px;">
                            Pilot:</td>
                        <td style="vertical-align: middle; width: 131px; height: 49px;">
                            <asp:DropDownList ID="ddlPilot1" runat="server">
                                <asp:Listitem>Green</asp:Listitem>
                                <asp:Listitem>Veteran</asp:Listitem>
                                <asp:Listitem>Elite</asp:Listitem>
                            </asp:DropDownList>
                        </td>
                        <td style="vertical-align: middle; text-align: left; width: 64px; height: 49px;">
                            <asp:UpdatePanel ID="UpdatePanel8" UpdateMode="Conditional" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="btnPilot" runat="server" Text="All" OnClick="btnPilot_Click" />
                                </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="width: 171px; height: 49px">
                            <asp:UpdatePanel ID="UpdatePanel9" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnPilot" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlPilot2" runat="server">
                                            <asp:Listitem>Green</asp:Listitem>
                                            <asp:Listitem>Veteran</asp:Listitem>
                                            <asp:Listitem>Elite</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>                                
                        </td>
                        <td style="height: 49px; width: 165px;">
                            <asp:UpdatePanel ID="UpdatePanel10" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnPilot" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlPilot3" runat="server">
                                            <asp:Listitem>Green</asp:Listitem>
                                            <asp:Listitem>Veteran</asp:Listitem>
                                            <asp:Listitem>Elite</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px; width: 164px;">
                            <asp:UpdatePanel ID="UpdatePanel11" UpdateMode="Conditional" runat="server">
                                <Triggers>
                                    <asp:AsyncPostBackTrigger ControlID="btnPilot" eventname="Click" />
                                </Triggers>        
                                    <ContentTemplate>
                                        <asp:DropDownList ID="ddlPilot4" runat="server">
                                            <asp:Listitem>Green</asp:Listitem>
                                            <asp:Listitem>Veteran</asp:Listitem>
                                            <asp:Listitem>Elite</asp:Listitem>
                                        </asp:DropDownList>
                                    </ContentTemplate>   
                            </asp:UpdatePanel>
                        </td>
                        <td style="height: 49px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align: middle; height: 49px;" colspan="3">
                            &nbsp;</td>
                        <td style="width: 171px; height: 49px">
                            &nbsp;</td>
                        <td style="height: 49px; width: 165px;"></td>
                        <td style="height: 49px; width: 164px;">&nbsp;</td>
                        <td style="height: 49px">&nbsp;</td>
                    </tr>
                    <tr>
                        <td style="vertical-align: middle; height: 29px;" colspan="3">
                <asp:Button ID="btnSubmit" runat="server" OnClick="OnClickSubmit" Text="Submit" Width="100px" />                            
                        </td>
                        <td style="width: 171px; height: 29px">
                <asp:Label ID="lblMessage" runat="server" ForeColor="Blue"></asp:Label>
                        </td>
                        <td style="height: 29px; width: 165px;"></td>
                        <td style="height: 29px; width: 164px;">&nbsp;</td>
                        <td style="height: 29px">&nbsp;</td>
                    </tr>
                </table>
                <asp:EntityDataSource ID="EntityDataSource2" runat="server" ConnectionString="name=MechGameEntities" DefaultContainerName="MechGameEntities" EnableFlattening="False" EntitySetName="MechTemplates" Select="it.[Id], it.[Name]"></asp:EntityDataSource>
                Lance List<br />
                <br />
                
                <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=MechGameEntities" DefaultContainerName="MechGameEntities" EnableFlattening="False" EntitySetName="MechGroups"></asp:EntityDataSource>
                <asp:GridView ID="gvMechGroup" DataSourceID="EntityDataSource1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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


            <br />


</asp:Content>
