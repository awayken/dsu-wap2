Public Class DataGridSimple
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
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
        'Put user code to initialize the page here

        Dim MyHash As New Hashtable(9)
        MyHash.Add("Belleek Colleen Vase", 34)
        MyHash.Add("Belinda Bradshaw Cat Bowl", 22)
        MyHash.Add("Nicholas Mosse Cat Mug", 34)
        MyHash.Add("Shamrock Paperweight", 99)
        MyHash.Add("Business Card Holder", 59)
        MyHash.Add("Large Shamrock Tea Pot", 54)
        MyHash.Add("Traditional Music of Ireland", 19.95)
        MyHash.Add("Bodhran with Trinity Design", 40)
        MyHash.Add("Belleek Cashill Clock", 110)

        ' Insert the code here


    End Sub

End Class
