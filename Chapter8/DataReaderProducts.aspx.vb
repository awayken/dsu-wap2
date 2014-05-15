Imports System.Data.SQLClient
Imports System.Configuration
Public Class DataReaderProducts
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=KALATA;packet size=4096;user id=sa;data source=""(local)\NetSDK"";pe" & _
        "rsist security info=True;initial catalog=Ch8TaraStoreSQL;password=password"

    End Sub
    Protected WithEvents MyProdList As System.Web.UI.WebControls.DataList
    Protected WithEvents LargeImage As System.Web.UI.WebControls.Image
    Protected WithEvents Label2 As System.Web.UI.WebControls.Label
    Protected WithEvents MyCatList As System.Web.UI.WebControls.DataList
    Protected WithEvents MySubCatList As System.Web.UI.WebControls.DataList
    Protected WithEvents MyProduct As System.Web.UI.WebControls.DataList
    Protected WithEvents homeImage As System.Web.UI.HtmlControls.HtmlImage
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection

    'NOTE: The following placeholder declaration is required by the Web Form Designer.
    'Do not delete or move it.
    Private designerPlaceholderDeclaration As System.Object

    Private Sub Page_Init(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Init
        'CODEGEN: This method call is required by the Web Form Designer
        'Do not modify it using the code editor.
        InitializeComponent()
    End Sub

#End Region
    Public Function GetCat() As SqlDataReader
        SqlConnection1.Open()
        Dim objCM1 As SqlCommand
        objCM1 = New SqlCommand("CategoryList", SqlConnection1)
        objCM1.CommandType = CommandType.StoredProcedure
        Dim objDR1 As SqlDataReader
        objDR1 = objCM1.ExecuteReader(CommandBehavior.CloseConnection)
        Return objDR1
    End Function
    Public Function GetSubCats(ByVal CatID As Integer) As SqlDataReader
        SqlConnection1.Open()
        Dim objCM2 As SqlCommand
        objCM2 = New SqlCommand("SubCategoryByCategory", SqlConnection1)
        objCM2.CommandType = CommandType.StoredProcedure

        'Insert code snippet here.






        Dim objDR2 As SqlDataReader
        objDR2 = objCM2.ExecuteReader(CommandBehavior.CloseConnection)
        Return objDR2
    End Function
    Public Function GetProducts(ByVal SubCatID As Integer) As SqlDataReader
        SqlConnection1.Open()
        Dim objCM3 As SqlCommand
        objCM3 = New SqlCommand("ProductsBySubCategory", SqlConnection1)
        objCM3.CommandType = CommandType.StoredProcedure

        Dim paramSubCatID As SqlParameter
        paramSubCatID = New SqlParameter("@SubCategoryID", SqlDbType.Int, 4)
        paramSubCatID.Value = SubCatID
        objCM3.Parameters.Add(paramSubCatID)

        Dim objDR3 As SqlDataReader
        objDR3 = objCM3.ExecuteReader(CommandBehavior.CloseConnection)
        Return objDR3
    End Function
    Public Function GetProduct(ByVal ProdID As Integer) As SqlDataReader
        SqlConnection1.Open()
        Dim objCM4 As SqlCommand
        objCM4 = New SqlCommand("SingleProductByProductID", SqlConnection1)
        objCM4.CommandType = CommandType.StoredProcedure

        Dim paramProdID As SqlParameter
        paramProdID = New SqlParameter("@ProductID", SqlDbType.Int, 4)
        paramProdID.Value = ProdID
        objCM4.Parameters.Add(paramProdID)

        Dim objDR4 As SqlDataReader
        objDR4 = objCM4.ExecuteReader(CommandBehavior.CloseConnection)
        Return objDR4
    End Function
    Private Sub Page_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'Put user code to initialize the page here
        ' Retrieve the parameters from the QueryString
        Dim SelID As String = Request.Params("selItem")
        Dim CatID As String = Request.Params("CatID")
        Dim SubCatID As String = Request.Params("SubCatID")
        Dim ProdID As String = Request.Params("ProdID")

        ' Retrieve the category list 
        MyCatList.DataSource = GetCat()
        MyCatList.DataBind()

        Select Case Request.Params("Show")
            Case "cat"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/CatPics/" & CatID & ".jpg"
                MySubCatList.Visible = True
                MyProdList.Visible = False
                MyProduct.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)
                MySubCatList.DataSource = GetSubCats(CatID)
                MySubCatList.DataBind()
            Case "prodlist"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/SubCatPics/" & SubCatID & ".jpg"
                MyProduct.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)
                MyProdList.Visible = True
                MySubCatList.Visible = False
                MyProdList.DataSource = GetProducts(SubCatID)
                MyProdList.DataBind()
            Case "prod"
                homeImage.Visible = False
                LargeImage.Visible = True
                LargeImage.ImageUrl = "images/ProductPics/" & ProdID & ".jpg"
                MyProduct.Visible = True
                MyCatList.SelectedIndex = CInt(SelID)
                MyProdList.Visible = False
                MySubCatList.Visible = False
                MyProduct.DataSource = GetProduct(ProdID)
                MyProduct.DataBind()
            Case Else
                homeImage.Visible = True
                LargeImage.Visible = False
                MyProduct.Visible = False
                MyProdList.Visible = False
                MySubCatList.Visible = False
                MyCatList.SelectedIndex = CInt(SelID)
        End Select

    End Sub

    Private Sub Page_UnLoad(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Unload
        SqlConnection1.Close()
    End Sub


End Class
