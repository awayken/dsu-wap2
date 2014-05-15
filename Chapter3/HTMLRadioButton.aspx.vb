Public Class HTMLRadioButton
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents btnSearch As System.Web.UI.HtmlControls.HtmlInputImage
    Protected WithEvents rdBooks As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdFood As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdClothing As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdPottery As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdCrystal As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdJewelry As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents rdGifts As System.Web.UI.HtmlControls.HtmlInputRadioButton
    Protected WithEvents lblTitle As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents imgTop As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents rdBridal As System.Web.UI.HtmlControls.HtmlInputRadioButton

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

    Private Sub btnSearch_ServerClick(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSearch.ServerClick



        If (rdBridal.Checked = True) Then
            lblTitle.InnerHtml = "Celebrate your Wedding!"
            imgTop.Src = "images/28.jpg"
        ElseIf (rdBooks.Checked = True) Then
            lblTitle.InnerHtml = "Your Favorite Irish Book Selections!"
            imgTop.Src = "images/27.jpg"
        ElseIf (rdClothing.Checked = True) Then
            lblTitle.InnerHtml = "Traditional Irish Clothing!"
            imgTop.Src = "images/26.jpg"
        ElseIf (rdFood.Checked = True) Then
            lblTitle.InnerHtml = "Traditional Irish Food Products!"
            imgTop.Src = "images/25.jpg"
        ElseIf (rdPottery.Checked = True) Then
            lblTitle.InnerHtml = "New Pottery from Belinda Bradshaw!"
            imgTop.Src = "images/24.jpg"
        ElseIf (rdCrystal.Checked = True) Then
            lblTitle.InnerHtml = "Quality Crystal & Traditional China!"
            imgTop.Src = "images/23.jpg"
        ElseIf (rdJewelry.Checked = True) Then
            lblTitle.InnerHtml = "Quality Jewely at Affordable Prices!"
            imgTop.Src = "images/22.jpg"
        ElseIf (rdGifts.Checked = True) Then
            lblTitle.InnerHtml = "Let us help you find the best gift!"
            imgTop.Src = "images/21.jpg"
        End If
    End Sub 
End Class
