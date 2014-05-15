' Miles Rausch
' Web Application Programming II
' Ch8Case3_AddCat.aspx

Imports System.Data.SqlClient

Public Class Ch8Case3_AddCat
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=GrocerToGo;password=password"

    End Sub
    Protected WithEvents hyperDelete As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperEdit As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperHome As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperAdd As System.Web.UI.WebControls.HyperLink
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents txtAdd As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnAdd As System.Web.UI.WebControls.Button
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblStatus As System.Web.UI.WebControls.Label

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim CatName As String = txtAdd.Text

        SqlConnection1.Open()
        Dim objCM As SqlCommand
        objCM = New SqlCommand("AddCategory", SqlConnection1)
        objCM.CommandType = CommandType.StoredProcedure

        Dim paramCatId As SqlParameter
        paramCatId = New SqlParameter("@CategoryID", SqlDbType.Int)
        paramCatId.Direction = ParameterDirection.Output
        objCM.Parameters.Add(paramCatId)

        Dim paramCatName As SqlParameter
        paramCatName = New SqlParameter("@CategoryName", SqlDbType.NVarChar, 255)
        paramCatName.Value = CatName
        objCM.Parameters.Add(paramCatName)

        objCM.ExecuteNonQuery()
        lblStatus.Text = CatName & " has an ID of " & paramCatId.Value
        SqlConnection1.Close()

        Response.Redirect("Ch8Case3_Home.aspx")
    End Sub
End Class
