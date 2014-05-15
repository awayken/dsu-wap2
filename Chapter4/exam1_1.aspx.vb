' Miles Rausch
' Exam 1 Part 1

Public Class exam1_1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents txtFirstNumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtSecondNumber As System.Web.UI.WebControls.TextBox
    Protected WithEvents btnCalculate As System.Web.UI.WebControls.Button
    Protected WithEvents ddOperations As System.Web.UI.WebControls.DropDownList
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    Protected WithEvents rfFirstNumber As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents rfSecondNumber As System.Web.UI.WebControls.RequiredFieldValidator
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
        If Not (IsPostBack) Then
            lblResults.Text = ""
        End If
    End Sub

    Private Sub btnCalculate_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnCalculate.Click
        Dim dblResult As Double
        Dim dblFirstNumber, dblSecondNumber As Double
        Dim strOperation As String

        strOperation = ddOperations.SelectedValue
        dblFirstNumber = CDbl(txtFirstNumber.Text)
        dblSecondNumber = CDbl(txtSecondNumber.Text)

        Select Case strOperation
            Case "add"
                dblResult = dblFirstNumber + dblSecondNumber
                lblResults.Text = dblFirstNumber & " + " & dblSecondNumber & " = " & dblResult
            Case "subtract"
                dblResult = dblFirstNumber - dblSecondNumber
                lblResults.Text = dblFirstNumber & " - " & dblSecondNumber & " = " & dblResult
            Case "multiply"
                dblResult = dblFirstNumber * dblSecondNumber
                lblResults.Text = dblFirstNumber & " * " & dblSecondNumber & " = " & dblResult
            Case "divide"
                dblResult = dblFirstNumber / dblSecondNumber
                lblResults.Text = dblFirstNumber & " / " & dblSecondNumber & " = " & dblResult
        End Select
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        lblResults.Text = ""
        txtFirstNumber.Text = ""
        txtSecondNumber.Text = ""
        ddOperations.SelectedIndex = 0
    End Sub
End Class
