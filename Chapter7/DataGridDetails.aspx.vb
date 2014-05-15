Public Class DataGridDetails
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Image1 As System.Web.UI.WebControls.Image
    Protected WithEvents Categories As System.Web.UI.WebControls.DataGrid
    Protected WithEvents Products As System.Web.UI.WebControls.DataGrid
    
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
       Dim MySearch As String
        Dim CatID = Request.QueryString("CategoryID")
        If Request.QueryString.Count > 0 Then
            Products.Visible = True
            If Request.QueryString("CategoryID") = "A" Then
                Image1.ImageUrl = "images/Products.jpg"
            Else
                Image1.ImageUrl = "images/CatPics/" & CatID & ".jpg"
                MySearch = "CategoryID = '" & CatID.ToString & "'"

                'Insert the code here 
               


            End If
        Else
            Image1.ImageUrl = "images/Products.jpg"
            Products.Visible = False
        End If

        'Insert the data binding code here 



    End Sub

End Class
