<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="startTest.aspx.cs" Inherits="midtermProjectWebProgrammingAPlus.Properties.startTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Midtern Test</title>
    
    <style type="text/css">
        
        .auto-style1 {
            width: 116px;
        }

     

        .auto-style2 {
            width: 116px;
            height: 25px;
        }
        .auto-style3 {
            height: 25px;
        }

     

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <div id="testQuestions">
            <h1 style="text-align:center;">
            <asp:Label ID="Label1" runat="server" Text="Question " style="text-align: center" ></asp:Label>
             </h1>
             <asp:Label ID="testQuestion" runat="server" Text="sss" style="text-align: center"></asp:Label>
            <hr />

        </div>

        <div id="testAnswers">
            <table style="width: 50%; margin:auto;">
                <tr>
                    <td class="auto-style2" style="text-align: right">
                        <asp:RadioButton ID="RadioButton1" runat="server" style="text-align: right" OnCheckedChanged="RadioButton1_CheckedChanged" /> 
                    </td>
                    <%--<td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="PullAnswerFromDb"></asp:Label>
                    </td>--%>
                </tr>

                <tr>
                    <td class="auto-style2">
                        <asp:RadioButton ID="RadioButton2" runat="server" style="text-align: right" OnCheckedChanged="RadioButton2_CheckedChanged" />
                    </td>
                    <%--<td class="auto-style3">
                        <asp:Label ID="Label3" runat="server" Text="PullAnswerFromDb"></asp:Label>
                    </td>--%>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:RadioButton ID="RadioButton3" runat="server" style="text-align: right" OnCheckedChanged="RadioButton3_CheckedChanged" />
                    </td>
                    <%--<td>
                        <asp:Label ID="Label4" runat="server" Text="PullAnswerFromDb"></asp:Label>
                    </td>--%>
                </tr>
                
                <tr>
                    <td class="auto-style1">
                        <asp:RadioButton ID="RadioButton4" runat="server" style="text-align: right" OnCheckedChanged="RadioButton4_CheckedChanged" />
                    </td>
                    <%--<td>
                        <asp:Label ID="Label5" runat="server" Text="PullAnswerFromDb"></asp:Label>
                    </td>--%>
                </tr>

            </table>
        </div>
       
       
         <%--set backVariables = previous set/ they can only press once--%>
        <div id="backButton">
        </div>

    </div>


    

        
    <script>

      

    </script>

        <asp:Timer ID="Timer1" runat="server" Interval="1000" OnTick="Timer1_Tick">
        </asp:Timer>


    

        
    </form>

    </body>
</html>

<%--
    Once User Selects answer move to next question // use same page just change out content
    
    Need to set answers & questions from DB to variables link them then random number generator 

    Have timer or time metric to see how long it took

    Assumption: only one right answer // no multiple answer questions 


    randomize number betwween 1-10 
        then show appropriate question / use ID from db 





--%>