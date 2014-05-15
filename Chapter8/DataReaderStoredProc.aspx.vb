Public Class DataReaderStoredProc
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=Ch8TaraStoreSQL;password=passwor" & _
        "d"

    End Sub
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents MyList As System.Web.UI.WebControls.DataList
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection

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
        SqlConnection1.Open()

        Dim objCM As SqlClient.SqlCommand
        objCM = New SqlClient.SqlCommand("CategoryList", SqlConnection1)
        objCM.CommandType = CommandType.StoredProcedure

        Dim objDR As SqlClient.SqlDataReader
        objDR = objCM.ExecuteReader(CommandBehavior.CloseConnection)
        MyList.DataSource = objDR
        MyList.DataBind()
    End Sub

End Class
