' Miles Rausch
' Web Application Programming II
' Ch4Case7Login.aspx

Public Class Ch4Case7Login
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtUsername As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPassword As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblUsername As System.Web.UI.WebControls.Label
    Protected WithEvents lblPassword As System.Web.UI.WebControls.Label
    Protected WithEvents btnUpload As System.Web.UI.WebControls.ImageButton
    Protected WithEvents txtUploadFileName As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblUploadFileName As System.Web.UI.WebControls.Label
    Protected WithEvents fileUpload As System.Web.UI.HtmlControls.HtmlInputFile
    Protected WithEvents lblUploadInst As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents btnSignIn As System.Web.UI.WebControls.Button
    Protected WithEvents linkUpload As System.Web.UI.WebControls.HyperLink
    Protected WithEvents btnSignOut As System.Web.UI.WebControls.Button
    Protected WithEvents lblError As System.Web.UI.WebControls.Label
    Protected WithEvents reUploadFileName As System.Web.UI.WebControls.RegularExpressionValidator

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
        If Not (IsPostBack) Then
            btnSignOut.Visible = False
            lblUploadInst.Visible = False
            fileUpload.Visible = False
            lblUploadFileName.Visible = False
            txtUploadFileName.Visible = False
            btnUpload.Visible = False
            linkUpload.Visible = False
            lblError.Text = ""
            reUploadFileName.Enabled = False
        End If
    End Sub

    Private Sub btnSignIn_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSignIn.Click
        If (txtUsername.Text = "StoreMan") And (txtPassword.Text = "GalwayBay") Then
            lblError.Text = ""
            btnSignOut.Visible = True
            lblUploadInst.Visible = True
            fileUpload.Visible = True
            lblUploadFileName.Visible = True
            txtUploadFileName.Visible = True
            btnUpload.Visible = True
            reUploadFileName.Enabled = True
            btnSignIn.Enabled = False
        Else
            lblError.Text = "Incorrect Username and Password.  Please try again."
        End If
    End Sub

    Private Sub btnSignOut_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSignOut.Click
        btnSignOut.Visible = False
        lblUploadInst.Visible = False
        fileUpload.Visible = False
        lblUploadFileName.Visible = False
        txtUploadFileName.Visible = False
        btnUpload.Visible = False
        linkUpload.Visible = False
        lblError.Text = ""
        reUploadFileName.Enabled = False
    End Sub

    Private Sub btnUpload_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnUpload.Click
        If Not (fileUpload.PostedFile Is Nothing) Then
            lblError.Text = ""
            Try
                Dim strFilePath As String
                strFilePath = System.IO.Path.GetDirectoryName(Server.MapPath("Ch4Case7Login.aspx"))
                fileUpload.PostedFile.SaveAs((strFilePath & "\Ch4Case7\" & txtUploadFileName.Text))
                linkUpload.NavigateUrl = "http://localhost/Chapter4/Ch4Case7/"
                linkUpload.Visible = True
            Catch ex As Exception
                lblError.Text = "Error: " & ex.Message
            End Try
        End If
    End Sub
End Class
