Public Class DataReader
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblCat As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        Dim CS As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Inetpub\wwwroot\Chapter8\data\TaraStore.mdb;"
        Dim objCN As New OleDb.OleDbConnection(CS)
        objCN.Open()

        Dim mySQL As String = "SELECT CategoryName FROM Categories"
        Dim objCM As New OleDb.OleDbCommand(mySQL, objCN)

        Dim objDR As OleDb.OleDbDataReader
        objDR = objCM.ExecuteReader

        Dim MyCat As String
        While objDR.Read()
            MyCat = MyCat + (objDR("CategoryName") & "<br />")
        End While

        objDR.Close()
        objCN.Close()

        lblCat.Text = MyCat
    End Sub

End Class
