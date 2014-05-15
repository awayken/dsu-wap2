' Miles Rausch
' Web Application Programming II
' Ch3Case2.aspx

Public Class Ch3Case4
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents rblProducts As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.ImageButton
    Protected WithEvents imgBridal As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgBooks As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgClothing As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgFood As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgCrystal As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgJewelry As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgGifts As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents imgPottery As System.Web.UI.HtmlControls.HtmlImage

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
        If Not Page.IsPostBack Then
            rblProducts.RepeatLayout = RepeatLayout.Table
            rblProducts.RepeatDirection = RepeatDirection.Vertical

            Dim alProducts As New ArrayList
            alProducts.Add("Gifts")
            alProducts.Add("Jewelry")
            alProducts.Add("Clothing")
            alProducts.Add("Food")
            alProducts.Add("Books, Music & Video")
            alProducts.Add("Bridal")
            alProducts.Add("Crystal & China")
            alProducts.Add("Pottery")

            rblProducts.DataSource = alProducts
            rblProducts.DataBind()
        End If
        imgBridal.Visible = False
        imgBooks.Visible = False
        imgClothing.Visible = False
        imgFood.Visible = False
        imgCrystal.Visible = False
        imgJewelry.Visible = False
        imgGifts.Visible = False
        imgPottery.Visible = False
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.Web.UI.ImageClickEventArgs) Handles btnSubmit.Click
        If rblProducts.SelectedValue = "Gifts" Then
            imgGifts.Visible = True
        ElseIf rblProducts.SelectedValue = "Jewelry" Then
            imgJewelry.Visible = True
        ElseIf rblProducts.SelectedValue = "Clothing" Then
            imgClothing.Visible = True
        ElseIf rblProducts.SelectedValue = "Food" Then
            imgFood.Visible = True
        ElseIf rblProducts.SelectedValue = "Books, Music & Video" Then
            imgBooks.Visible = True
        ElseIf rblProducts.SelectedValue = "Bridal" Then
            imgBridal.Visible = True
        ElseIf rblProducts.SelectedValue = "Crystal & China" Then
            imgCrystal.Visible = True
        ElseIf rblProducts.SelectedValue = "Pottery" Then
            imgPottery.Visible = True
        End If
    End Sub
End Class
