' Miles Rausch
' Web Application Programming II
' Ch5Proj4.aspx

Public Class Ch5Proj4
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents lblTopics As System.Web.UI.WebControls.Label
    Protected WithEvents txtLocation As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblLocation As System.Web.UI.WebControls.Label
    Protected WithEvents ImageButton1 As System.Web.UI.WebControls.ImageButton
    Protected WithEvents location As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents Calendar1 As System.Web.UI.WebControls.Calendar

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
        If Not Page.IsPostBack Then
            location.Src = "images/" & "StoreLocation.jpg"
            lblTitle.Text = "Welcome to Tara Store"
        Else
            Dim strEntered As String
            strEntered = txtLocation.Text
            lblTitle.Text = strEntered

            Dim objCh5Proj4Class As New Chapter5.Ch5Proj4Class
            objCh5Proj4Class.ChangeImage(strEntered)

            Dim strNewImage As String
            strNewImage = objCh5Proj4Class.NewStoreImage()
            lblTopics.Text = "The image above is: " & strNewImage
            location.Src = "images/" & strNewImage
        End If
    End Sub

End Class
