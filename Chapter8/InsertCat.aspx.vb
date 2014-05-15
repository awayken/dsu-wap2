Imports System
Imports System.Data
Imports System.Data.SqlClient
Public Class InsertCat
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents tCatName As System.Web.UI.WebControls.TextBox
    Protected WithEvents tCatImage As System.Web.UI.WebControls.TextBox
    Protected WithEvents tCatThumb As System.Web.UI.WebControls.TextBox
    Protected WithEvents tCatDesc As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnAdd As System.Web.UI.WebControls.Button
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents Label6 As System.Web.UI.WebControls.Label
    Protected WithEvents btnView As System.Web.UI.WebControls.Button

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
        'Put user code to initialize the page here 
    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Dim CS As String
        CS = _
            "user id=sa;data source=(local)\NetSDK;" & _
            "persist security info=True;" & _
            "initial catalog=Ch8TaraStoreSQL;" & _
            "password=password"
        Dim SqlConnection1 As SqlConnection
        SqlConnection1 = New SqlConnection(CS)

        Dim CatName As String = tCatName.Text
        Dim CatImage As String = tCatImage.Text
        Dim CatThumb As String = tCatThumb.Text
        ' insert the code to retrieve the text from the textbox here
      



        Dim oCM As SqlClient.SqlCommand
        oCM = New SqlClient.SqlCommand("AddCatSQL", SqlConnection1)
        oCM.CommandType = CommandType.StoredProcedure

        ' insert the code to retrieve the CatID for the new record here
        





        Dim pCatName As SqlClient.SqlParameter
        pCatName = New SqlClient.SqlParameter("@CatName", SqlDbType.NVarChar, 50)
        pCatName.Value = CatName
        oCM.Parameters.Add(pCatName)

        Dim pCatImage As SqlClient.SqlParameter
        pCatImage = New SqlClient.SqlParameter("@CatImage", SqlDbType.NVarChar, 50)
        pCatImage.Value = CatImage
        oCM.Parameters.Add(pCatImage)

        Dim pCatThumb As SqlClient.SqlParameter
        pCatThumb = New SqlClient.SqlParameter("@CatThumb", SqlDbType.NVarChar, 50)
        pCatThumb.Value = CatThumb
        oCM.Parameters.Add(pCatThumb)

        ' insert the code to create the pCatDesc parameter 
        




        ' insert the code to run the command and close the connection
       




         ' reset the text boxes so they are empty
        tCatName.Text = ""
        tCatImage.Text = ""
        tCatThumb.Text = ""
        tCatDesc.Text = ""
    End Sub
 
    Private Sub btnView_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnView.Click
        Response.Redirect("DataReaderSQL.aspx")
    End Sub
End Class
