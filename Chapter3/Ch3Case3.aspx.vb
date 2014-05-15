' Miles Rausch
' Web Application Programming II
' Ch3Case3.aspx

Public Class Ch3Case3
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtFullName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtAddress As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    Protected WithEvents reqFullName As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents reqAddress As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents reqPhone As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents reqEmail As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents expPhone As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents expEmail As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents lblReqError As System.Web.UI.WebControls.Label
    Protected WithEvents lblThanks As System.Web.UI.WebControls.Label

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

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtFullName.Text = ""
        txtAddress.Text = ""
        txtPhone.Text = ""
        txtEmail.Text = ""
        lblThanks.Text = "Please complete the form above."
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        If Page.IsValid = True Then
            lblThanks.Text = "Thank you for completing the form."
        ElseIf Page.IsValid = False Then
            lblThanks.Text = "Please complete the form above."
        End If
    End Sub
End Class
