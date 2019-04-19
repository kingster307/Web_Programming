using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient; //need this for sql database connections


namespace midtermProjectWebProgrammingAPlus.Properties
{
    public partial class startTest : System.Web.UI.Page
    {
        int[] Questions = new int[10];
        


     //   string previousQuestion, previousAnswer, previousCorrectAnswer, previousAnswer1, previousAnswer2, previousAnswer3, previousAnswer4, previousQuestionNumber;
    
        string currentQuestion, currentAnswer, currentAnswer1, currentAnswer2, currentAnswer3, currentAnswer4;

        string userAnswer1, userAnswer2, userAnswer3, userAnswer4, userAnswer5, userAnswer6, userAnswer7, userAnswer8, userAnswer9, userAnswer10;
        string correctAnswer1, correctAnswer2, correctAnswer3, correctAnswer4, correctAnswer5, correctAnswer6, correctAnswer7, correctAnswer8, correctAnswer9, correctAnswer10; 


        int globalCounter = 1;
        double grade = 10;
        int uniqueChecker;
        bool isUniqueNum = false;

        int time; 

      //  bool goBackPressed = false, correctlyAnswered;





        protected void Page_Load(object sender, EventArgs e)
        {
            randomizeNumbers();
            loadQA();
        }


        //generates unique random number between 1-10
        public void randomizeNumbers()
        {
            //for randimization of questions 
            Random rnd = new Random();
            for (int i = 0; i <= 9; i++)
            {
                isUniqueNum = false;
                if (i == 0)
                {
                    Questions[i] = rnd.Next(0, 9);
                }else{

                    while (isUniqueNum == false)
                    {
                        uniqueChecker = rnd.Next(1, 11);

                        // Questions.Contains(uniqueChecker)?uniqueChecker=false:uniqueChecker=true

                        if (Questions.Contains(uniqueChecker))
                        {
                            isUniqueNum = false;
                        }else{
                            isUniqueNum = true;
                            Questions[i] = uniqueChecker;
                        }
                    } 
                }
            }
        }


        //loads the Question & Answers to the screen
        public void loadQA(){
            databseToVariables();
            changeText();
        }



        public void databseToVariables() { 
            
            //pulls from the database & puts into variables  / chnage connection string in config
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            SqlCommand cmd = new SqlCommand("SELECT Question, correctAnswer, answerOption1, answerOption2, answerOption3, answerOption4 FROM Table1 WHERE(ID= '" + Convert.ToInt32(Questions[globalCounter - 1]) + "'", con);
            DataTable table = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            adapter.Fill(table);

 //Now you have a collection of rows that you can iterate over
            foreach (DataRow row in table.Rows)
            {
                currentQuestion = row["Question"].ToString();
                currentAnswer = row["correctAnswer"].ToString();
                currentAnswer1 = row["answerOption1"].ToString();
                currentAnswer2 = row["answerOption2"].ToString();
                currentAnswer3 = row["answerOption3"].ToString();
                currentAnswer4 = row["answerOption4"].ToString();
            }

        }


        //chnages front end text
        public void changeText(){
            RadioButton1.Text = currentAnswer1;
            RadioButton2.Text = currentAnswer2;
            RadioButton3.Text = currentAnswer3;
            RadioButton4.Text = currentAnswer4;
            testQuestion.Text = currentQuestion;
            Label1.Text += globalCounter.ToString();
        }
        

        //handles instances that user clicks back button / if time permits 
       // public void goBack() { 
       //goBackPressed=true;
       //     //take the previous variables & sets them to current/could just take global counter back one then do loadQA again
       // //if previous was wrong then +1
       // //clear selected answer

       // }


        
       
        //keep grade up to date everytuime they answer
        public void currentGrade(){
            //concatination of global counter occurs here / if cant get this to work use cases to select which variable based off the global variable 
            //don't think this will work
            if (("userAnswer" + globalCounter.ToString()) != currentAnswer) {
                grade -= 1;
            }
        }

         
        //handles instances that user answers question
        public void questionAnswered() {
            currentGrade();
            globalCounter+=1;
            loadQA();
        }


        //converting the fraction to percentage
        public void finalGrade()
        {
            grade = ((grade / 10) * 100);
        }



        //if question 10 doesnt appear then error occured here
        public void endOfTestChecker(){
            
            //11 would be after question 10 is answered
            if (globalCounter==11){
                finalGrade();
                
                //for future form use
                Session["finalGrade"] = grade;
                Session["userAnswer1"] = userAnswer1;
                Session["userAnswer2"] = userAnswer2;
                Session["userAnswer3"] = userAnswer3;
                Session["userAnswer4"] = userAnswer4;
                Session["userAnswer5"] = userAnswer5;
                Session["userAnswer6"] = userAnswer6;
                Session["userAnswer7"] = userAnswer7;
                Session["userAnswer8"] = userAnswer8;
                Session["userAnswer9"] = userAnswer9;
                Session["userAnswer10"] = userAnswer10;
                Session["correctAnswer1"] = correctAnswer1;
                Session["correctAnswer2"] = correctAnswer2;
                Session["correctAnswer3"] = correctAnswer3;
                Session["correctAnswer4"] = correctAnswer4;
                Session["correctAnswer5"] = correctAnswer5;
                Session["correctAnswer6"] = correctAnswer6;
                Session["correctAnswer7"] = correctAnswer7;
                Session["correctAnswer8"] = correctAnswer8;
                Session["correctAnswer9"] = correctAnswer9;
                Session["correctAnswer10"] = correctAnswer10;
                Session["time"] = time;

                Response.Redirect("testReview.aspx");   

                //session final grade / user answer for questions / question array so that correct questions can be pulled from db on testResults 
            }else{questionAnswered();}
        }


        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {
            endOfTestChecker();
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {
            endOfTestChecker();
        }

        protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
        {
            endOfTestChecker();
        }

        protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
        {
            endOfTestChecker();
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            time += 1;

            //if time is > time limit then end test & redirect to testResults page 
        }








      

    }

    }




      

  
//find grade 

//      ((grade/10)*100)



//may have to throw question[globalcounter]
//SELECT Question, correctAnswer, answerOption1, answerOption2, answerOption3, answerOption4 FROM Table1 WHERE(ID= questions[globalcounter]