<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="userProfile.aspx.vb" Inherits="loginForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
        
 
        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
               
                <tr>

                <td></td>

                <td>
                    <asp:Label ID="lblName" runat="server" Text="Label"></asp:Label>
                </td> 
                </tr>

                <tr>
                    <td style="text-align: right">Username</td>
                    <td>

                        <asp:TextBox ID="TbUsername" runat="server"></asp:TextBox>

                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;FirstName</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbFirstName" runat="server" Width="116px"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style22">Last Name</td>
                    <td>
                        <asp:TextBox ID="TbLastName" runat="server"></asp:TextBox>
                    </td>
                    
                </tr>
                <tr>
                    <td class="auto-style22">University</td>
                    <td>
                        <asp:TextBox ID="TbUniversity" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                 <tr>
                    <td class="auto-style22">Password</td>
                    <td>
                        <asp:TextBox ID="TbPwd" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                 <tr>
                    <td class="auto-style22">Verify Password</td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                    </td>
                   
                </tr>
                 <tr>
                    <td class="auto-style22">Security Question</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                    </td>
                   
                </tr>
                <tr>
                    <td class="auto-style22">Security Question</td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: right">
                      <asp:Button ID="BtnDelete" runat="server" Text="delete" />
                   </td>
                    <td>
                        <asp:Button ID="BtUpdate" runat="server" Text="Update" />
                    </td>
                </tr>
            </table>
        </asp:Panel>


        
 

    </div>
   
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="customerId" HeaderText="customerId" InsertVisible="False" SortExpression="customerId" />
                <asp:BoundField DataField="customerUsername" HeaderText="customerUsername" SortExpression="customerUsername" />
                <asp:BoundField DataField="customerPassword" HeaderText="customerPassword" SortExpression="customerPassword" />
                <asp:BoundField DataField="customerFN" HeaderText="customerFN" SortExpression="customerFN" />
                <asp:BoundField DataField="customerLN" HeaderText="customerLN" SortExpression="customerLN" />
                <asp:BoundField DataField="customerUniversity" HeaderText="customerUniversity" SortExpression="customerUniversity" />
                <asp:BoundField DataField="securityQuestion" HeaderText="securityQuestion" SortExpression="securityQuestion" />
                <asp:BoundField DataField="Field1" HeaderText="Field1" SortExpression="Field1" />
            </Columns>
        </asp:GridView>
   
    </form>
</body>

</html>

<!--This is the user profile page -->