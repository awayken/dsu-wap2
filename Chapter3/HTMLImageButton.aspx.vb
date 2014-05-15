Public Class HTMLImageButton
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblGiftIdeasWomen As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblGiftIdeasMen As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents btnMale As System.Web.UI.HtmlControls.HtmlInputImage
    Protected WithEvents btnFemale As System.Web.UI.HtmlControls.HtmlInputImage
    Protected WithEvents imgLogo As System.Web.UI.HtmlControls.HtmlImage

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region

    Private Sub btnMale_ServerClick(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnMale.ServerClick
        lblTitle.InnerHtml = "<b>We have lots of gift ideas for men.</b>"
        lblGiftIdeasWomen.Visible = False
        lblGiftIdeasMen.Visible = True
    End Sub

    Private Sub btnFemale_ServerClick(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnFemale.ServerClick
        lblTitle.InnerHtml = "<b>We have lots of gift ideas for women.</b>"
        lblGiftIdeasWomen.Visible = True
        lblGiftIdeasMen.Visible = False
    End Sub

    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        If Not IsPostBack Then
            lblGiftIdeasMen.Visible = False
            lblGiftIdeasWomen.Visible = False
        End If
    End Sub
End Class
