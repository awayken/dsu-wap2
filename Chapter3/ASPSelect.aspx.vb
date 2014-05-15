Public Class ASPSelect
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.WebControls.Label
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents imgTop As System.Web.UI.WebControls.Image
    Protected WithEvents dlCategory As System.Web.UI.WebControls.DropDownList

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
        If (Not IsPostBack) Then
            dlCategory.Items.Add("Gifts")
            dlCategory.Items.Add("Jewelry")
            dlCategory.Items.Add("China and Crystal")
            dlCategory.Items.Add("Pottery")
            dlCategory.Items.Add("Clothing")
            dlCategory.Items.Add("Food")
            dlCategory.Items.Add("Books, Music, and Video")
            dlCategory.Items.Add("Bridal")
        End If
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Select Case dlCategory.SelectedIndex
            Case 0
                lblTitle.Text = "Let us help you find the best gift!"
                imgTop.ImageUrl = "images/21.jpg"
            Case 1
                lblTitle.Text = _
                "Quality Jewely at Affordable Prices!"
                imgTop.ImageUrl = "images/22.jpg"
            Case 2
                lblTitle.Text = _
                "Quality Crystal & Traditional China!"
                imgTop.ImageUrl = "images/23.jpg"
            Case 3
                lblTitle.Text = _
                "New Pottery from Belinda Bradshaw!"
                imgTop.ImageUrl = "images/24.jpg"
            Case 4
                lblTitle.Text = _
                "Traditional Irish Clothing!"
                imgTop.ImageUrl = "images/26.jpg"
            Case 5
                lblTitle.Text = _
                "Traditional Irish Food Products!"
                imgTop.ImageUrl = "images/25.jpg"
            Case 6
                lblTitle.Text = _
                "Our Favorite Irish Book Selections!"
                imgTop.ImageUrl = "images/27.jpg"
            Case 7
                lblTitle.Text = _
               "Celebrate your Wedding!"
                imgTop.ImageUrl = "images/28.jpg"
            Case Else
                lblTitle.Text = _
                "Select a Product Category"
                imgTop.ImageUrl = "images/WaterfordGifts.jpg"
        End Select
    End Sub
End Class
