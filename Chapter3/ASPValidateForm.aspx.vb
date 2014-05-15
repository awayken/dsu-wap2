Public Class ASPValidateForm
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents RegularExpressionValidator2 As System.Web.UI.WebControls.RegularExpressionValidator
    Protected WithEvents ValRFEmail As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValRFPhone As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValRFLastName As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents lblEmail As System.Web.UI.WebControls.Label
    Protected WithEvents lblPhone As System.Web.UI.WebControls.Label
    Protected WithEvents lblLastName As System.Web.UI.WebControls.Label
    Protected WithEvents txtFirstName As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtLastName As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblFirstName As System.Web.UI.WebControls.Label
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents txtPhone As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtEmail As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.ImageButton
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents ValRFirstName As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents ValREPhone As System.Web.UI.WebControls.RegularExpressionValidator

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

End Class
