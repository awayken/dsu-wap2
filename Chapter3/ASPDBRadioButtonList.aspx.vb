Public Class ASPDBRadioButtonList
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.ImageButton
    Protected WithEvents lblTopics As System.Web.UI.WebControls.Label
    Protected WithEvents Panel1 As System.Web.UI.WebControls.Panel
    Protected WithEvents RBL As System.Web.UI.WebControls.RadioButtonList

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
            RBL.RepeatLayout = RepeatLayout.Table
            RBL.RepeatDirection = RepeatDirection.Vertical

            Dim AR1 As New ArrayList
            AR1.Add("Fishing in Ireland")
            AR1.Add("Hiking in Ireland")
            AR1.Add("Irish History")
            AR1.Add("Irish Music")
            AR1.Add("Travel in Ireland")
            AR1.Add("Sports in Ireland")
            RBL.DataSource = AR1
            RBL.DataBind()
        End If
    End Sub


    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSubmit.Click
        Dim strResult As String
        strResult = "<b>You selected: </b><br /><br />"
        If RBL.SelectedIndex > -1 Then
            strResult += RBL.SelectedItem.Text
        End If
        lblTopics.Text = strResult
    End Sub
End Class
