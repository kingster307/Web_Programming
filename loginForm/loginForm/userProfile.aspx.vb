Public Class WebForm1
    Inherits System.Web.UI.Page

    Dim USR As String = Convert.ToString(Session("Secret"))
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lblName.Text = USR
        '  Dim name As String = Null





    End Sub
    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles BtUpdate.Click

        'update btn 

        'This is for update User profile 

        SqlDataSource1.UpdateCommand = "UPDATE Table1 SET customerUsername = '" & TbUsername.Text & "', customerPassword = '" & TbPwd.Text & "', customerLN = '" & TbLastName.Text & "', customerUniversity = '" & TbUniversity.Text & "' WHERE(customerId = '" & USR & "')"
        SqlDataSource1.Update()
        GridView1.DataBind()
    End Sub
    Protected Sub Button1_Click1(sender As Object, e As EventArgs) Handles BtnDelete.Click

        SqlDataSource1.DeleteCommand = "DELETE FROM Table1 WHERE(customerUsername = '" & USR & "')"
        SqlDataSource1.Delete()
        GridView1.DataBind()

    End Sub
End Class