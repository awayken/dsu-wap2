' Miles Rausch
' Web Application Programming II
' Ch3Case2.aspx

Public Class Ch3Case2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtQuantity As System.Web.UI.WebControls.TextBox
    Protected WithEvents lblCost As System.Web.UI.WebControls.Label
    Protected WithEvents btnClock As System.Web.UI.WebControls.Button
    Protected WithEvents btnBusinessCard As System.Web.UI.WebControls.Button
    Protected WithEvents btnPaperweight As System.Web.UI.WebControls.Button
    Protected WithEvents btnLetterOpener As System.Web.UI.WebControls.Button
    Protected WithEvents btnMakeupBrush As System.Web.UI.WebControls.Button
    Protected WithEvents lblClock As System.Web.UI.WebControls.Label
    Protected WithEvents lblPaperweight As System.Web.UI.WebControls.Label
    Protected WithEvents lblOpener As System.Web.UI.WebControls.Label
    Protected WithEvents lblBrush As System.Web.UI.WebControls.Label
    Protected WithEvents lblHolder As System.Web.UI.WebControls.Label

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
    End Sub

    Private Sub btnClock_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClock.Click
        Dim Cost As Integer
        Cost = txtQuantity.Text * lblClock.Text
        lblCost.Text = "$ " & Cost.ToString
    End Sub

    Private Sub btnBusinessCard_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnBusinessCard.Click
        Dim Cost As Integer
        Cost = txtQuantity.Text * lblHolder.Text
        lblCost.Text = "$ " & Cost.ToString
    End Sub

    Private Sub btnPaperweight_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnPaperweight.Click
        Dim Cost As Integer
        Cost = txtQuantity.Text * lblPaperweight.Text
        lblCost.Text = "$ " & Cost.ToString
    End Sub

    Private Sub btnLetterOpener_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLetterOpener.Click
        Dim Cost As Integer
        Cost = txtQuantity.Text * lblOpener.Text
        lblCost.Text = "$ " & Cost.ToString
    End Sub

    Private Sub btnMakeupBrush_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnMakeupBrush.Click
        Dim Cost As Integer
        Cost = txtQuantity.Text * lblBrush.Text
        lblCost.Text = "$ " & Cost.ToString
    End Sub
End Class
