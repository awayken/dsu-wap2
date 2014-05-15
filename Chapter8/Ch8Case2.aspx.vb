' Miles Rausch
' Web Application Programming II
' Ch8Case2.aspx

Imports System.Data.SQLClient

Public Class Ch8Case2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=GrocerToGo;password=password"

    End Sub
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents listCategory As System.Web.UI.WebControls.DataList
    Protected WithEvents listProducts As System.Web.UI.WebControls.DataList

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
        Dim CatID As String = Request.Params("CatID")

        If Not IsPostBack() Then
            SqlConnection1.Open()
            Dim objCM As SqlCommand
            objCM = New SqlCommand("DisplayCats", SqlConnection1)
            objCM.CommandType = CommandType.StoredProcedure

            Dim objDR As SqlDataReader
            objDR = objCM.ExecuteReader()

            listCategory.DataSource = objDR
            listCategory.DataBind()

            objDR.Close()
            SqlConnection1.Close()
        End If
        If CatID <> "" Then
            SqlConnection1.Open()
            Dim objCM As SqlCommand
            objCM = New SqlCommand("DisplayProducts", SqlConnection1)
            objCM.CommandType = CommandType.StoredProcedure

            Dim paramCategoryId As SqlParameter
            paramCategoryId = New SqlParameter("@CategoryID", SqlDbType.Int)
            paramCategoryId.Value = CatID
            objCM.Parameters.Add(paramCategoryId)

            Dim objDR As SqlDataReader
            objDR = objCM.ExecuteReader()

            listProducts.DataSource = objDR
            listProducts.DataBind()

            objDR.Close()
            SqlConnection1.Close()
        End If
    End Sub
End Class
