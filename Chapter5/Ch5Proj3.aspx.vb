' Miles Rausch
' Web Application Programming II
' Ch5Proj3.aspx

Public Class Ch5Proj3
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents lblTopics As System.Web.UI.WebControls.Label
    Protected WithEvents location As System.Web.UI.HtmlControls.HtmlImage

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
        Dim strClass As String
        Dim objCh5Proj3Class As New Chapter5.Ch5Proj3Class

        strClass = objCh5Proj3Class.NewStoreAddress()
        lblTopics.Text = strClass
    End Sub

End Class

Public Class Ch5Proj3Class
    Private StoreAddress As String = "555 Michigan Avenue, Chicago, IL 60016"

    Public ReadOnly Property NewStoreAddress() As String
        Get
            Return StoreAddress
        End Get
    End Property
End Class