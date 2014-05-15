Imports System.Data.SQLClient
Imports System.Configuration
Public Class CatMenu
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents MyProdList As System.Web.UI.WebControls.DataList
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents MyCatList As System.Web.UI.WebControls.DataList
    Protected WithEvents homeImage As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents LargeImage As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents MySubCatList As System.Web.UI.WebControls.DataList
    Protected WithEvents MyProduct As System.Web.UI.WebControls.DataList

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

        Dim SelID As String = Request.Params("selItem")
        Dim CatID As String = Request.Params("CatID")
        Dim SubCatID As String = Request.Params("SubCatID")
        Dim ProdID As String = Request.Params("ProdID")

        If Not SelID Is Nothing Then
            MyCatList.SelectedIndex = CInt(SelID)
            homeImage.Visible = False
        Else
            homeImage.Visible = True
        End If

        ' Retrieve the category list 






        Select Case Request.Params("Show")
            Case "cat"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/CatPics/" & CatID & ".jpg"
                MySubCatList.Visible = True
                MyProdList.Visible = False
                MyProduct.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)

                ' Retrieve the subcategory list 








            Case "prodlist"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/SubCatPics/" & SubCatID & ".jpg"
                MyProduct.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)
                MyProdList.Visible = True
                MySubCatList.Visible = False

                ' Retrieve the product list 







            Case "prod"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/ProductPics/" & ProdID & ".jpg"
                MyProduct.Visible = True
                MyCatList.SelectedIndex = CInt(SelID)
                MyProdList.Visible = False
                MySubCatList.Visible = False

                ' Retrieve the individual product information






            Case Else
                homeImage.Visible = True
                LargeImage.Visible = False
                MyProduct.Visible = False
                MyProdList.Visible = False
                MySubCatList.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)

        End Select
    End Sub

End Class
