' Miles Rausch
' Web Application Programming II
' Ch8Case3_DeleteCat.aspx

Imports System.Data.SqlClient

Public Class Ch8Case3_DeleteCat
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
    Protected WithEvents hyperDelete As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperEdit As System.Web.UI.WebControls.HyperLink
    Protected WithEvents listCategory As System.Web.UI.WebControls.DataList
    Protected WithEvents hyperHome As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperAdd As System.Web.UI.WebControls.HyperLink
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents lblStatus As System.Web.UI.WebControls.Label

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

        If CatID <> "" Then
            SqlConnection1.Open()
            Dim objCM2 As SqlCommand
            objCM2 = New SqlCommand("DeleteCategory", SqlConnection1)
            objCM2.CommandType = CommandType.StoredProcedure

            Dim paramCategoryId As SqlParameter
            paramCategoryId = New SqlParameter("@CategoryID", SqlDbType.Int)
            paramCategoryId.Value = CatID
            objCM2.Parameters.Add(paramCategoryId)

            objCM2.ExecuteNonQuery()
            lblStatus.Text = CatID & " has been deleted"
            SqlConnection1.Close()

            Response.Redirect("Ch8Case3_Home.aspx")
        End If

        SqlConnection1.Open()
        Dim objCM As SqlCommand
        objCM = New SqlCommand("DisplayCatsNew", SqlConnection1)
        objCM.CommandType = CommandType.StoredProcedure

        Dim objDR As SqlDataReader
        objDR = objCM.ExecuteReader()

        listCategory.DataSource = objDR
        listCategory.DataBind()

        objDR.Close()
        SqlConnection1.Close()
    End Sub

End Class
