<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="firstPage.aspx.vb" Inherits="firstPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 98%;
        }
        .auto-style2 {
            width: 270px;
        }
        .auto-style3 {
            width: 154px;
        }
        .auto-style4 {
            width: 138px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label_ChooseState" runat="server" Text="Choose a State :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlState" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource_State" DataTextField="StateName" DataValueField="StateCode">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource_State" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [StateCode], [StateName] FROM [States] ORDER BY [StateName]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan ="2">
                 <asp:DataList ID="dlCustomers" runat="server" DataSourceID="SqlDataSource_Customers" CellPadding="4" ForeColor="#333333" Width="475px">
                     <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderTemplate>
                         Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email
                     </HeaderTemplate>
                     <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                     <ItemTemplate>
                         &nbsp;&nbsp;<table class="auto-style1">
                             <tr>
                                 <td class="auto-style3">
                                     <asp:Label ID="LastNameLabel" runat="server" Text='<%# Eval("LastName") %>' />
                                 </td>
                                 <td class="auto-style4">
                                     <asp:Label ID="FirstNameLabel" runat="server" Text='<%# Eval("FirstName") %>' />
                                 </td>
                                 <td>
                                     <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                 </td>
                             </tr>
                         </table>
                         <br />
                     </ItemTemplate>
                     <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                     <SeparatorTemplate>
                         <hr />
                     </SeparatorTemplate>
    </asp:DataList>

                 <hr />

                 <asp:SqlDataSource ID="SqlDataSource_Customers" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [LastName], [FirstName], [Email] FROM [Customers] WHERE ([StateCode] = @StateCode) ORDER BY  [LastName],[FirstName]">
                     <SelectParameters>
                         <asp:ControlParameter ControlID="ddlState" Name="StateCode" PropertyName="SelectedValue" Type="String" />
                     </SelectParameters>
                 </asp:SqlDataSource>

            </td>
        </tr>
    </table>

    <br />
   
    <br />

</asp:Content>

