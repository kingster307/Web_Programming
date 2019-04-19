<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testReview.aspx.cs" Inherits="midtermProjectWebProgrammingAPlus.Properties.testReview" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: right;
        }  
        .auto-style2 {
            text-align: right;
            height: 25px;
            width: 404px;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style4 {
            text-align: right;
            width: 404px;
        }
    </style>
</head>
<body>

    <h1 style="text-align: center">Test Review</h1>
    <hr />

    <form id="form1" runat="server">
        <div id="testReview">
    
            <div id="questionOne">

                 <div id="testAnswersQuestionOne">
                     <h2 style="text-align: center">Question 1</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style2" style="text-align: right">
                                <asp:RadioButton ID="RadioButton1" runat="server" /> 
                            </td>
                            <td class="auto-style3">
                            
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style4">
                                <asp:RadioButton ID="RadioButton2" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                
                        <tr>
                            <td class="auto-style4">
                                <asp:RadioButton ID="RadioButton3" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                
                        <tr>
                            <td class="auto-style4">
                                <asp:RadioButton ID="RadioButton4" runat="server" />
                            </td>
                            <td>
                                &nbsp;</td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionTwo">

                <div id="testAnswersQuestionTwo">
                    <h2 style="text-align: center">Question 2</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton5" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label1" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton6" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label6" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton7" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label7" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton8" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label8" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionThree">

                <div id="testAnswerQuestionThree">
                     <h2 style="text-align: center">Question 3</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton9" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label9" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton10" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label10" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton11" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label11" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton12" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label12" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionFour">

                <div id="testAnswersQuestionFour">
                     <h2 style="text-align: center">Question 4</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton13" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label13" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton14" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label14" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton15" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label15" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton16" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label16" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionFive">

                <div id="testAnswersQuestionFive">
                     <h2 style="text-align: center">Question 5</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton17" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label17" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton18" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label18" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton19" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label19" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton20" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label20" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="=questionSix">

                <div id="testAnswersQuestionSix">
                     <h2 style="text-align: center">Question 6</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton21" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label21" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton22" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label22" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton23" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label23" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton24" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label24" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionSeven">

                <div id="testAnswersQuestionSeven">
                     <h2 style="text-align: center">Question 7</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton25" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label25" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton26" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label26" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton27" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label27" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton28" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label28" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionEight">

                <div id="testAnswersQuestionEight">
                     <h2 style="text-align: center">Question 8</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton29" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label29" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton30" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label30" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton31" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label31" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton32" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label32" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionNine">

                <div id="testAnswersQuestionNine">
                     <h2 style="text-align: center">Question 9</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton33" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label33" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton34" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label34" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton35" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label35" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton36" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label36" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

            <div id="questionTen">

                <div id="testAnswersQuestionTen">
                     <h2 style="text-align: center">Question 10</h2>
                    <table style="width: 50%; margin:auto;">
                        <tr>
                            <td class="auto-style1" style="text-align: right">
                                <asp:RadioButton ID="RadioButton37" runat="server" /> 
                            </td>
                            <td>
                            <asp:Label ID="Label37" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>

                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton38" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label38" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton39" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label39" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                
                        <tr>
                            <td class="auto-style1">
                                <asp:RadioButton ID="RadioButton40" runat="server" />
                            </td>
                            <td>
                                <asp:Label ID="Label40" runat="server" Text="PullAnswerFromDb"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
    
<%--The correct answer should have the radiobtn checked && readOnly && --%>
