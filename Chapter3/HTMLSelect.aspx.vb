Public Class HTMLSelect
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblTitle As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents btnSubmit As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents imgProduct As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents CatList As System.Web.UI.HtmlControls.HtmlSelect
    Protected WithEvents ProductList As System.Web.UI.HtmlControls.HtmlSelect

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
            lblTitle.InnerHtml = "Select the gender of the gift recipient."
            imgProduct.Visible = False
            ProductList.Visible = False
            CatList.Items.Add("Gifts for Men")
            CatList.Items.Add("Gifts for Women")
        End If
    End Sub

    Sub CatList_ServerChange(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CatList.ServerChange
        CatList.Visible = False
        btnSubmit.Visible = False
        ProductList.Visible = True
        imgProduct.Visible = True
        ProductList.Items.Clear()
        If CatList.Value = "Gifts for Men" Then
            lblTitle.InnerHtml = "We have lot's of gift ideas for men."
            ProductList.Items.Clear()
            ProductList.Items.Add("Golf Ball")
            ProductList.Items.Add("Golf Club")
            ProductList.Items.Add("Male Golfer")
            ProductList.Items.Add("Letter Opener")
            ProductList.Items.Add("Business Card Holder")
            ProductList.Items.Add("Shamrock")
            ProductList.Items.Add("Paperweight")
        Else
            lblTitle.InnerHtml = "We have lot's of gift ideas for women."
            ProductList.Items.Clear()
            ProductList.Items.Add("Make-Up Brush")
            ProductList.Items.Add("Tyrone Bell")
            ProductList.Items.Add("Butterfly")
            ProductList.Items.Add("Balmoral Vase")
            ProductList.Items.Add("Abbey Clock")
            ProductList.Items.Add("Heart Shaped Ring Holder")
            ProductList.Items.Add("Wellsley Picture Frame")
        End If
    End Sub
End Class
