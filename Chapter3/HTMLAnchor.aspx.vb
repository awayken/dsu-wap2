Public Class HTMLAnchor
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblMale As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblFemale As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents AFemale As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents lblHome As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents AHome As System.Web.UI.HtmlControls.HtmlAnchor
    Protected WithEvents AMale As System.Web.UI.HtmlControls.HtmlAnchor

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
        AMale.HRef = "GiftsForMen.aspx"
        AFemale.HRef = "GiftsforWomen.aspx"
        AHome.HRef = "http://www.tarastore.com"
    End Sub

End Class
