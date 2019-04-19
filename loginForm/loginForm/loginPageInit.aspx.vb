Public Class loginPageInit
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


    End Sub
    Public Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim i As Integer

        For i = 0 To GridView1.Rows.Count - 1
            If TbUsernameLogin.Text = Trim(GridView1.Rows(i).Cells(1).Text) And TbPwdLogin.Text = Trim(GridView1.Rows(i).Cells(2).Text) Then

                Dim usrname As String = GridView1.Rows(i).Cells(1).Text


                'might need to insert command then insert just like the one underneath 


                'SqlDataSource1.SelectCommand = "Select customerId FROM Table1 WHERE (customerUsername = '" & usrname & "'  )"

                'cusID = Convert.ToString(SqlDataSource1.Select(DataSourceSelectArguments.Empty))

                Session("Name") = usrname

                Response.Redirect("userProfile.aspx")




            Else
                Label1.Text = "this is wrong try again or quit "
            End If

        Next




        'End If


    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        'doesnt work but should 
        'need to make sure that the fields arent blank
        If TbUsername.Text <> " " And TbFirstName.Text <> " " And TbLastName.Text <> " " And TbUniversity.Text <> " " Then

            'set up query 
            SqlDataSource1.InsertCommand = "INSERT INTO Table1(customerUsername, customerPassword, customerFN, customerLN, customerUniversity)VALUES('" & TbUsername.Text & "', '" & TbPwd.Text & "','" & TbFirstName.Text & "', '" & TbLastName.Text & "','" & TbUniversity.Text & "')"
            'execute
            SqlDataSource1.Insert()
            GridView1.DataBind()

        Else
            Label1.Text = "All fields must be filled in to register"

        End If


        ' capture like login then pass to otger page 

    End Sub
End Class
