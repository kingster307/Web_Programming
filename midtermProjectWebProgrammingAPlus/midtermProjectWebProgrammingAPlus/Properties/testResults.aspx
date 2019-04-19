<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testResults.aspx.cs" Inherits="midtermProjectWebProgrammingAPlus.Properties.testResults" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Midterm Submitted</title>
</head>
<body>
    <form id="form1" runat="server">
    
        
        <div class="container" style="text-align:center;">
    
        <h1 style="text-align: center">
            <asp:Label ID="Label4" runat="server" Text="Test Results"></asp:Label>
        </h1>

        <label>Time: </label>
        <asp:Label ID="Label1" runat="server" Text="00:00"></asp:Label>
        <hr />

        <label>Score: </label>
        <asp:Label ID="Label2" runat="server" Text="9/10 (90%)"></asp:Label>
        <hr />
        
        <label>Name: </label>
        <asp:Label ID="Label3" runat="server" Text="onclicktakenamefromjsfile"></asp:Label>

        <hr />
        <%--<a href="testResults.aspx">See what you got wrong</a>--%>
            <asp:Button ID="Button1" runat="server" Text="Review" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
