<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="loginPageInit.aspx.vb" Inherits="loginForm.loginPageInit" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    <style type="text/css">
        #Panel1 {
        display:none;
        }
        .auto-style2 {
            height: 40px;
            text-align: left;
        }
        .auto-style3 {
            height: 95px;
        }
        .auto-style4 {
            height: 91px;
            text-align: center;
            width: 690px;
        }
        .auto-style6 {
            height: 95px;
            width: 447px;
            text-align: right;
        }
        .auto-style8 {
            height: 40px;
            text-align: left;
            width: 367px;
        }
        .auto-style9 {
            height: 95px;
            width: 367px;
        }
        .auto-style10 {
            width: 447px;
        }
        .auto-style12 {
            width: 486px;
            text-align: right;
            height: 23px;
        }
        .auto-style13 {
            height: 23px;
        }
        .auto-style15 {
            height: 41px;
            width: 447px;
            text-align: right;
        }
        .auto-style16 {
            height: 41px;
            width: 367px;
        }
        .auto-style17 {
            height: 41px;
        }
        .auto-style18 {
            height: 49px;
            width: 447px;
            text-align: right;
        }
        .auto-style19 {
            height: 49px;
            width: 367px;
        }
        .auto-style20 {
            height: 49px;
        }
        .auto-style21 {
            height: 40px;
            width: 447px;
            text-align: right;
        }
        /*body {
        color: #ff1212;
        Background: #6ca8d4;
        }*/
        table {
        border: none;
        }
        .auto-style22 {
            width: 486px;
            text-align: right;
        }
        </style>

    <script>
        function show() {
            document.getElementById("Panel1").style.display = "block";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="width: 100%;">
            <tr>
                <td class="auto-style10"></td>
                <td class="auto-style4">
                    <asp:Label ID="Label1" runat="server" Text="Login Form" Font-Size="XX-Large" Font-Underline="True" ForeColor="#CC33FF"></asp:Label>
                </td>
                
            </tr>
            <tr>
                <td class="auto-style21">Username</td>
                <td class="auto-style8">
                    <asp:TextBox ID="TbUsernameLogin" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td class="auto-style18">Password</td>
                <td class="auto-style19">
                    <asp:TextBox ID="TbPwdLogin" runat="server" style="text-align: left"></asp:TextBox>
                </td>
                <td class="auto-style20"></td>
            </tr>
            <tr>
                <td class="auto-style15"></td>
                <td class="auto-style16">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" />
                </td>
                <td class="auto-style17"></td>
            </tr>
             <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style9">
                    New User? <a href="#" id="register" onclick="show()">Reigister</a> <!--need to make the registration form appear after clicked-->
                </td>
                <td class="auto-style3"></td>
            </tr>
        </table>
        <asp:Panel ID="Panel1" runat="server">
            <table style="width: 100%;">
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
                    <td>
                      
                   </td>
                    <td>
                         <asp:Button ID="Button1" runat="server" Text="enter" Height="31px" Width="130px" />
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 15px" Width="1415px" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="customerId">
            <Columns>
                <asp:BoundField DataField="customerId" HeaderText="customerId" ReadOnly="True" SortExpression="customerId" />
                <asp:BoundField DataField="customerUsername" HeaderText="customerUsername" SortExpression="customerUsername" />
                <asp:BoundField DataField="customerPassword" HeaderText="customerPassword" SortExpression="customerPassword" />
                <asp:BoundField DataField="customerFN" HeaderText="customerFN" SortExpression="customerFN" />
                <asp:BoundField DataField="customerLN" HeaderText="customerLN" SortExpression="customerLN" />
                <asp:BoundField DataField="customerUniversity" HeaderText="customerUniversity" SortExpression="customerUniversity" />
                <asp:BoundField DataField="securityQuestion" HeaderText="securityQuestion" SortExpression="securityQuestion" />
                <asp:BoundField DataField="Field1" HeaderText="Field1" SortExpression="Field1" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Table1]"></asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
