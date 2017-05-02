<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="SecPage.aspx.vb" Inherits="SecPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 316px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="GridView_CustomersName" runat="server" AllowPaging="True" AutoGenerateSelectButton="True" DataKeyNames="LastName" AutoGenerateColumns="False" DataSourceID="SqlDataSource_CustomerName" Width="268px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"   />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_CustomerName" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [LastName], [FirstName] FROM [Customers] ORDER BY [LastName],[FirstName]"></asp:SqlDataSource>
            </td>
            <td>
                <asp:DetailsView ID="DetailsView_customers" runat="server" AutoGenerateRows="False" DataSourceID="SqlDataSource_CustomersDatails" Height="50px" Width="125px" CellPadding="4" DataKeyNames="customer_id" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                    <EditRowStyle BackColor="#999999" />
                    <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                    <Fields>
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                        <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                        <asp:BoundField DataField="Street" HeaderText="Street" SortExpression="Street" />
                        <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                        <asp:BoundField DataField="StateCode" HeaderText="StateCode" SortExpression="StateCode" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" SortExpression="ZipCode" />
                        <asp:BoundField DataField="PhoneNumber" HeaderText="PhoneNumber" SortExpression="PhoneNumber" />
                        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    </Fields>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:DetailsView>
                <asp:SqlDataSource ID="SqlDataSource_CustomersDatails" runat="server" ConnectionString="<%$ ConnectionStrings:CS557_FA15_lingashettaraConnectionString %>" SelectCommand="SELECT [customer_id], [Email], [LastName], [FirstName], [Street], [City], [StateCode], [ZipCode], [PhoneNumber] FROM [Customers] WHERE ([LastName] = @LastName)" DeleteCommand="DELETE FROM [Customers] WHERE [customer_id] = @customer_id" InsertCommand="INSERT INTO [Customers] ([Email], [LastName], [FirstName], [Street], [City], [StateCode], [ZipCode], [PhoneNumber]) VALUES (@Email, @LastName, @FirstName, @Street, @City, @StateCode, @ZipCode, @PhoneNumber)" UpdateCommand="UPDATE [Customers] SET [Email] = @Email, [LastName] = @LastName, [FirstName] = @FirstName, [Street] = @Street, [City] = @City, [StateCode] = @StateCode, [ZipCode] = @ZipCode, [PhoneNumber] = @PhoneNumber WHERE [customer_id] = @customer_id">
                    <DeleteParameters>
                        <asp:Parameter Name="customer_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView_CustomersName" Name="LastName" PropertyName="SelectedValue" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="LastName" Type="String" />
                        <asp:Parameter Name="FirstName" Type="String" />
                        <asp:Parameter Name="Street" Type="String" />
                        <asp:Parameter Name="City" Type="String" />
                        <asp:Parameter Name="StateCode" Type="String" />
                        <asp:Parameter Name="ZipCode" Type="String" />
                        <asp:Parameter Name="PhoneNumber" Type="String" />
                        <asp:Parameter Name="customer_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

