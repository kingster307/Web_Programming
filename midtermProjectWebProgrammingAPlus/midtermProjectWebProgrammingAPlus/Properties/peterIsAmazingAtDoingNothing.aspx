<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="peterIsAmazingAtDoingNothing.aspx.cs" Inherits="midtermProjectWebProgrammingAPlus.Properties.peterIsAmazingAtDoingNothing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MidTerm</title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .container {
            width:70%;
            margin:auto;
            text-align: center;
        }
        .testTime {
        display:inline-block;
        }
        .numberOfQuestions {
            display:inline-block;
            
        }
        .nameInput {
           /*need to center this*/
        }
        .numberOfQuestions {
        margin-left:5em;
        }
    </style>
    <script src="profesionalJavascripter.js"></script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--<div class="boxHeader">
            

        </div>-->
        <h1 class="auto-style1">Midterm Test</h1>
       
            <hr class="lineCenterWidth" />
        <div class="container">
            
            <div class="headerContainer">
                
                <div class="testTime">
                    <label class="displayChangeIB"><strong>time:</strong> </label>
                    <asp:Label ID="Label1" runat="server" Text="30:00"></asp:Label>
                </div>

                <div class="numberOfQuestions">       
                    <label class="rightSide"><strong>Number of Questions:</strong></label>
                  
                    <asp:Label ID="Label2" runat="server" Text="10"></asp:Label>
                    
                </div>
                </div>
            
            <div class="nameInput">    
                <label>Name</label>
                <asp:TextBox ID="textboxName" runat="server" OnTextChanged="TextBox1_TextChanged" Width="166px"></asp:TextBox>
            </div>
            
            <div class="fullSend">
                <%--<button id="Btn1" onclick="functionSkrt()"></button>--%>
                <asp:Button ID="Button1" runat="server" Text="Don't you dare touch this button" OnClick="Button1_Click" />
            </div>
           
        </div>

    </div>
        <footer style="text-align: center">
            <small>Programed by Peter King</small>
        </footer>
    </form>

    <script>
        

    </script>
    
</body>
</html>

<%-- 

 /$ use javascript either arrays or different containers w/ css display property / keep page same but change out sections for acutal test 

ask the user ten questions of your choice (that would be in a database) in a random order 

give the user the option to choose from 4 multiple choice answers (in random order)

/$ (for random order assign each a number then use random number generator)

prompt the user to enter his name before he enters the test 

Allow the user to answer one question at a time /$(where sectioning come in handy)

Once the user picks his/her answer, the form would go to the next question 

once user is done with test then display score with correct answers/wrong

allow user to go back and see what the wrong questions
    
left right side of containers like form style

--%>









