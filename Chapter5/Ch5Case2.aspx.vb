' Miles Rausch
' Web Application Programming II
' Ch5Case2.aspx

Public Class Ch5Case2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblStoreName As System.Web.UI.WebControls.Label
    Protected WithEvents lblStoreAddress As System.Web.UI.WebControls.Label
    Protected WithEvents lblStoreEmail As System.Web.UI.WebControls.Label
    Protected WithEvents lblStorePhone As System.Web.UI.WebControls.Label
    Protected WithEvents lblStoreDesc As System.Web.UI.WebControls.Label
    Protected WithEvents lblStoreVisits As System.Web.UI.WebControls.Label
    Protected WithEvents lblStoreTaxRate As System.Web.UI.WebControls.Label

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
        Dim objCh5Case2Class As New Chapter5.Ch5Case2Class

        lblStoreName.Text = objCh5Case2Class.StoreName
        lblStoreAddress.Text = objCh5Case2Class.StoreAddress
        lblStoreEmail.Text = objCh5Case2Class.StoreEmail
        lblStorePhone.Text = objCh5Case2Class.StorePhone
        lblStoreDesc.Text = objCh5Case2Class.StoreDesc

        lblStoreVisits.Text = String.Format("{0:#,###}", objCh5Case2Class.StoreVisits)
        lblStoreTaxRate.Text = String.Format("{0:P}", objCh5Case2Class.StoreTaxRate)

    End Sub

End Class
