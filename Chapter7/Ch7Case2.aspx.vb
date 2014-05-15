' Miles Rausch
' Web Application Programming II
' Ch7Case2.aspx

Public Class Ch7Case2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents ddLogins As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnLookup As System.Web.UI.WebControls.Button
    Protected WithEvents dlLogins As System.Web.UI.WebControls.DataList
    Protected WithEvents lblResults As System.Web.UI.WebControls.Label

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
        Dim strResult As String = ""

        Dim hashUsersPasswords As New Hashtable(4)
        hashUsersPasswords.Add("KKalata", "Author")
        hashUsersPasswords.Add("DJurash", "SchoolHouse")
        hashUsersPasswords.Add("PKnowles", "PencilSharpener")
        hashUsersPasswords.Add("SCrawley", "ArtWork")

        If Not Page.IsPostBack() Then
            ddLogins.DataSource = hashUsersPasswords
            ddLogins.DataTextField = "Key"
            ddLogins.DataValueField = "Value"
            Page.DataBind()
        Else
            Dim strPassword As String = ddLogins.SelectedValue
            Dim strLogin As String = ddLogins.SelectedItem.Text

            strResult = "<p>LoginID: <b>" + strLogin + "</b><br />Password: <b>" + strPassword + "</b></p>"
            strResult += "<p>The other passwords are:<br />"
            lblResults.Text = strResult

            dlLogins.DataSource = hashUsersPasswords
            dlLogins.DataBind()
        End If
    End Sub

End Class
