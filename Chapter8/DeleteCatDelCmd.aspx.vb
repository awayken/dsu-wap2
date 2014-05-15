
Imports System
Imports System.Data
Imports System.Data.SqlClient
Public Class DeleteCatDelCmd
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents MyDG As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents btnView As System.Web.UI.WebControls.Button
    Protected WithEvents btnAdd As System.Web.UI.WebControls.Button

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Dim objCN As SqlConnection
    Dim CS As String

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        CS = _
        "user id=sa;data source=(local)\NetSDK;" & _
        "persist security info=True;" & _
        "initial catalog=Ch8TaraStoreSQL;" & _
        "password=password"
        objCN = New SqlConnection(CS)
        If Not (IsPostBack) Then
            BindGrid()
        End If
    End Sub

    Sub BindGrid()
        
        Dim objDA As SqlDataAdapter
        objDA = New SqlDataAdapter("Select * from Categories", objCN)

        Dim DS_CategoryList As DataSet
        DS_CategoryList = New DataSet

        objDA.Fill(DS_CategoryList, "Products")

        Dim objDV As DataView
        objDV = DS_CategoryList.Tables("Products").DefaultView()
        MyDG.DataSource = objDV
        Page.DataBind() 
    End Sub

    Sub MyDG_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles MyDG.DeleteCommand
           Dim objCM As SqlClient.SqlCommand
            Dim MySQL As String
            MySQL = "DELETE FROM Categories WHERE CategoryID = @CatID"
            objCM = New SqlClient.SqlCommand(MySQL, objCN)
            objCM.Parameters.Add(New SqlParameter("@CatId", SqlDbType.Int))
            objCM.Parameters("@CatId").Value = MyDG.DataKeys(CInt(e.Item.ItemIndex))

            objCN.Open()
            Try
                objCM.ExecuteNonQuery()
            Label2.Text = "Record Deleted."
            Catch Exc As SqlException
                Label2.Text = "ERROR: Could not delete record."
            End Try
            objCN.Close()
            BindGrid() 
    End Sub

    Private Sub btnAdd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnAdd.Click
        Response.Redirect("InsertCat.aspx")
    End Sub

    Private Sub btnView_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnView.Click
        Response.Redirect("DataReaderSQL.aspx")
    End Sub
End Class
