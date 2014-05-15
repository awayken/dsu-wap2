' Miles Rausch
' Web Application Programming II
' Ch4Case6.aspx

Public Class Ch4Case6
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnStart As System.Web.UI.WebControls.Button
    Protected WithEvents lblStart As System.Web.UI.WebControls.Label
    Protected WithEvents calVacation As System.Web.UI.WebControls.Calendar
    Protected WithEvents btnEnd As System.Web.UI.WebControls.Button
    Protected WithEvents lblEnd As System.Web.UI.WebControls.Label
    Protected WithEvents lblSummary As System.Web.UI.WebControls.Label
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button

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
        calVacation.SelectedDate = Today
    End Sub

    Private Sub btnStart_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnStart.Click
        lblSummary.Text = ""
        lblEnd.Text = ""
        lblStart.Text = calVacation.SelectedDate
    End Sub

    Private Sub btnEnd_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnEnd.Click
        If lblStart.Text <> "" Then
            Dim dateStart, dateEnd As Date
            dateStart = Convert.ToDateTime(lblStart.Text)
            dateEnd = calVacation.SelectedDate

            If dateStart > dateEnd Then
                lblSummary.Text = "Your ending date comes before your starting date.  Please fix this problem."
            Else
                lblEnd.Text = calVacation.SelectedDate

                Dim intVacationDays As Integer
                Dim tsVacation As TimeSpan

                intVacationDays = 0
                tsVacation = (CType(dateEnd.Subtract(dateStart), TimeSpan))
                intVacationDays = tsVacation.TotalDays

                lblSummary.Text = "Your vacation lasting " & intVacationDays & " days from " & dateStart & " until " & dateEnd & " has been scheduled.  Thank you."
            End If
        End If
    End Sub

    Private Sub btnClear_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnClear.Click
        lblStart.Text = ""
        lblEnd.Text = ""
        lblSummary.Text = ""
        calVacation.SelectedDate = Today
    End Sub
End Class
