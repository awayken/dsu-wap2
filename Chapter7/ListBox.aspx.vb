Public Class ListBox
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblCurrency As System.Web.UI.WebControls.Label
    Protected WithEvents MyLB3 As System.Web.UI.WebControls.ListBox
    Protected WithEvents lblHashTable As System.Web.UI.WebControls.Label
    Protected WithEvents MyLB1 As System.Web.UI.WebControls.ListBox
    Protected WithEvents MyLB2 As System.Web.UI.WebControls.ListBox
    Protected WithEvents lblMyResults As System.Web.UI.WebControls.Label
    Protected WithEvents lblArray As System.Web.UI.WebControls.Label
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
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
        If Not Page.IsPostBack() Then
            Dim arr1 As New ArrayList(9)
            arr1.Add("Belleek Colleen Vase")
            arr1.Add("Belinda Bradshaw Cat Bowl")
            arr1.Add("Nicholas Mosse Cat Mug")
            arr1.Add("Shamrock Paperweight")
            arr1.Add("Business Card Holder")
            arr1.Add("Large Shamrock Tea Pot")
            arr1.Add("Traditional Music of Ireland")
            arr1.Add("Bodhran with Trinity Design")
            arr1.Add("Belleek Cashill Clock")

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

           
        Else
        End If
    End Sub
    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        lblMyResults.Text = _
        "MyLB1 = " & MyLB1.SelectedItem.ToString() & "<br />" & _
        "MyLB2 = " & MyLB2.SelectedItem.ToString() & "<br />" & _
        "MyLB3 = " & MyLB3.SelectedItem.ToString()
    End Sub
End Class
