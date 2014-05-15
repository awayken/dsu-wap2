' Miles Rausch
' Web Application Programming II
' Exam2_1.aspx

Imports System.Data.SqlClient

Public Class Exam2_1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;password=password;data s" & _
        "ource=""(local)\NETSDK"";persist security info=False;initial catalog=pubs"

    End Sub
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents btnLookup As System.Web.UI.WebControls.Button
    Protected WithEvents lblResult As System.Web.UI.WebControls.Label
    Protected WithEvents btnClear As System.Web.UI.WebControls.Button
    Protected WithEvents txtFirst As System.Web.UI.WebControls.TextBox
    Protected WithEvents txtLast As System.Web.UI.WebControls.TextBox
    Protected WithEvents reqFirst As System.Web.UI.WebControls.RequiredFieldValidator
    Protected WithEvents reqLast As System.Web.UI.WebControls.RequiredFieldValidator

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
        txtFirst.Text = ""
        txtLast.Text = ""
        lblResult.Text = ""
    End Sub

    Private Sub btnLookup_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnLookup.Click
        Dim strResultText As String = ""
        Dim strFirst As String = txtFirst.Text
        Dim strLast As String = txtLast.Text

        SqlConnection1.Open()

        Dim objCM As SqlCommand
        objCM = New SqlCommand("PhoneLookup", SqlConnection1)
        objCM.CommandType = CommandType.StoredProcedure

        Dim first As SqlParameter
        first = New SqlParameter("@first", SqlDbType.NVarChar)
        first.Value = strFirst
        objCM.Parameters.Add(first)

        Dim last As SqlParameter
        last = New SqlParameter("@last", SqlDbType.NVarChar)
        last.Value = strLast
        objCM.Parameters.Add(last)

        Dim objDR As SqlDataReader
        objDR = objCM.ExecuteReader(CommandBehavior.SingleRow)
        While objDR.Read()
            strResultText = "Phone:<br />"
            strResultText &= objDR(0)
        End While
        If strResultText = "" Then
            strResultText = "Sorry, no phone number found."
        End If

        lblResult.Text = strResultText
    End Sub
End Class
