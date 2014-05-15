Public Class HTMLInputButton
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblUsername As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblPassword As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents lblHelp As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents txtUsername As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents txtPassword As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents btnSubmit As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents btnReset As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents btnHelp As System.Web.UI.HtmlControls.HtmlInputButton

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
        lblTitle.InnerHtml = "Please log into our Customer Support Area."
        lblHelp.Visible = False
        btnHelp.Visible = True
    End Sub

    Private Sub btnSubmit_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.ServerClick
        lblHelp.Visible = False
        If ((txtUsername.Value = "Course") And (txtPassword.Value = "Technology")) Then
            lblTitle.InnerHtml = "You are authenticated!"
        Else
            lblTitle.InnerHtml = "Please click on the Help button for help!"
            txtUsername.Value = ""
            txtPassword.Value = ""
            btnHelp.Visible = True
        End If
    End Sub

    Private Sub btnReset_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnReset.ServerClick

    End Sub

    Private Sub btnHelp_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnHelp.ServerClick
        lblTitle.InnerHtml = "Please log into our Customer Support Area."
        lblHelp.Visible = True
        btnHelp.Visible = False
    End Sub
End Class
