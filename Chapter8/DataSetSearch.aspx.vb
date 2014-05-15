Imports System
Imports System.Data
Imports System.Data.SqlClient

Public Class DataSetSearch
    Inherits System.Web.UI.Page
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents lblSearch As System.Web.UI.WebControls.Label
    Protected WithEvents txtSearch As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnGo As System.Web.UI.WebControls.Button
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents lblResults As System.Web.UI.WebControls.Label
    Protected WithEvents MyDG As System.Web.UI.WebControls.DataGrid

#Region " Web Form Designer Generated Code "

    '    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub

    '    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    '    'Do not delete or move it.
    '    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        '        'CODEGEN: This method call is required by the Web Form Designer
        '        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    ' insert the variable declarations code snippet here
   


    
    Dim RecNum As String


    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        
        ' insert the Page_Load code snippet here
      








    End Sub

    Sub BindMyDG() 
        Dim CS As String
        CS = _
        "user id=sa;data source=(local)\NetSDK;" & _
        "persist security info=True;" & _
        "initial catalog=Ch8TaraStoreSQL;" & _
        "password=password"

        Dim objCN As SqlConnection
        objCN = New SqlConnection(CS)

        Dim objDA As SqlDataAdapter
        objDA = New SqlDataAdapter("Select * from Products", objCN)

        Dim DS_SearchProducts As DataSet
        DS_SearchProducts = New DataSet

        objDA.Fill(DS_SearchProducts, "Products")

        Dim objDV As DataView
        objDV = DS_SearchProducts.Tables("Products").DefaultView()

        ' insert the RowFilter code snippet here
       




        Select Case objDV.Count
            Case 0
                lblResults.Text = _
                    "There are no matches - Try Again."
                MyDG.Visible = False
            Case 1
                lblResults.Text = _
                    "There is " & RecNum & " match."
                MyDG.AllowPaging = False
                MyDG.Visible = True
            Case 2, 3
                lblResults.Text = _
                    "There are " & RecNum & " matches. " & _
                    "<br>Click 'Next' to view more results."
                MyDG.AllowPaging = False
                MyDG.Visible = True
            Case Is > 3
                lblResults.Text = _
                    "There are " & RecNum & " matches. " & _
                    "<br>Click 'Next' to view more results."
                MyDG.AllowPaging = True
                MyDG.Visible = True
            Case Else
                lblResults.Text = _
                    "There are " & RecNum & " matches."
                MyDG.AllowPaging = True
                MyDG.Visible = True
        End Select

        ' insert the data binding code snippet here 
       


    End Sub
    Private Sub MyDG_PageIndexChanged(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridPageChangedEventArgs) Handles MyDG.PageIndexChanged
        MyDG.CurrentPageIndex = e.NewPageIndex
        BindMyDG()
    End Sub

    Private Sub btnGo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGo.Click
    End Sub
End Class
