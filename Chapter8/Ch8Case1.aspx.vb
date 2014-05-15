' Miles Rausch
' Web Application Programming II
' Ch8Case1.aspx

Imports System.Data.SQLClient

Public Class Ch8Case1
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=Pubs;password=password"

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents Label3 As System.Web.UI.WebControls.Label
    Protected WithEvents Label4 As System.Web.UI.WebControls.Label
    Protected WithEvents btnGo As System.Web.UI.WebControls.Button
    Protected WithEvents Label5 As System.Web.UI.WebControls.Label
    Protected WithEvents MyLabel As System.Web.UI.WebControls.Label
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents DDAL As System.Web.UI.WebControls.DropDownList

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
        If Not IsPostBack() Then
            SqlConnection1.Open()
            Dim objCM As SqlCommand
            objCM = New SqlCommand("ListAuthorsByLastName", SqlConnection1)
            objCM.CommandType = CommandType.StoredProcedure

            Dim objDR As SqlDataReader
            objDR = objCM.ExecuteReader()

            DDAL.DataSource = objDR
            DDAL.DataTextField = "au_lname"
            DDAL.DataValueField = "au_id"
            DDAL.DataBind()

            objDR.Close()
            SqlConnection1.Close()
        End If
    End Sub

    Private Sub btnGo_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnGo.Click
        SqlConnection1.Open()
        Dim objCM As SqlCommand
        objCM = New SqlCommand("AuthorsAddress", SqlConnection1)
        objCM.CommandType = CommandType.StoredProcedure

        Dim paramAuId As SqlParameter
        paramAuId = New SqlParameter("@au_id", SqlDbType.NVarChar, 11)
        paramAuId.Value = DDAL.SelectedItem.Value.ToString
        objCM.Parameters.Add(paramAuId)

        Dim objDR As SqlDataReader
        objDR = objCM.ExecuteReader(CommandBehavior.CloseConnection)

        Dim TheAddress As String
        While objDR.Read()
            TheAddress = objDR("au_fname") & " " & objDR("au_lname") & "<br />"
            TheAddress = TheAddress & objDR("address") & "<br />"
            TheAddress = TheAddress & objDR("city") & ", " & objDR("state") & " " & objDR("zip")
        End While
        MyLabel.Text = TheAddress

        objDR.Close()
        SqlConnection1.Close()
    End Sub
End Class
