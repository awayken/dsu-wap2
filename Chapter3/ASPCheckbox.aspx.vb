Public Class ASPCheckbox
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents CB1 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB2 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB3 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB4 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB5 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB6 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents CB7 As System.Web.UI.WebControls.CheckBox
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.ImageButton
    Protected WithEvents lblTopics As System.Web.UI.WebControls.Label
    Protected WithEvents CB8 As System.Web.UI.WebControls.CheckBox

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

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSubmit.Click
        Dim MyMessage As String
        MyMessage = "<b>You selected:</b><br /><br />"
        If CB1.Checked Then
            MyMessage += CB1.Text & "<br />"
        End If
        If CB2.Checked Then
            MyMessage += CB2.Text & "<br/>"
        End If
        If CB3.Checked Then
            MyMessage += CB3.Text & "<br/>"
        End If
        If CB4.Checked Then
            MyMessage += CB4.Text & "<br/>"
        End If
        If CB5.Checked Then
            MyMessage += CB5.Text & "<br/>"
        End If
        If CB6.Checked Then
            MyMessage += CB6.Text & "<br/>"
        End If
        If CB7.Checked Then
            MyMessage += CB7.Text & "<br/>"
        End If
        If CB8.Checked Then
            MyMessage += CB8.Text & "<br/>"
        End If
        MyMessage += "<br/><b>Thank you.</b>"
        lblTopics.Text = MyMessage.ToString()
    End Sub
End Class
