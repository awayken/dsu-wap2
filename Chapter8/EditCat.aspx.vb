Imports System.Data.SqlClient

Public Class EditCat
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlInsertCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlUpdateCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlDeleteCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        Me.DS_EditCat1 = New Chapter8.DS_EditCat
        Me.DataView1 = New System.Data.DataView
        CType(Me.DS_EditCat1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.DeleteCommand = Me.SqlDeleteCommand1
        Me.SqlDataAdapter1.InsertCommand = Me.SqlInsertCommand1
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Categories", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("Description", "Description"), New System.Data.Common.DataColumnMapping("Thumbnail", "Thumbnail"), New System.Data.Common.DataColumnMapping("CatImage", "CatImage"), New System.Data.Common.DataColumnMapping("CategoryName", "CategoryName"), New System.Data.Common.DataColumnMapping("CategoryID", "CategoryID")})})
        Me.SqlDataAdapter1.UpdateCommand = Me.SqlUpdateCommand1
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT Description, Thumbnail, CatImage, CategoryName, CategoryID FROM Categories" & _
        ""
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1
        '
        'SqlInsertCommand1
        '
        Me.SqlInsertCommand1.CommandText = "INSERT INTO Categories(Description, Thumbnail, CatImage, CategoryName, CategoryID" & _
        ") VALUES (@Description, @Thumbnail, @CatImage, @CategoryName, @CategoryID); SELE" & _
        "CT Description, Thumbnail, CatImage, CategoryName, CategoryID FROM Categories WH" & _
        "ERE (CategoryID = @CategoryID)"
        Me.SqlInsertCommand1.Connection = Me.SqlConnection1
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Description", System.Data.SqlDbType.NVarChar, 1073741823, "Description"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Thumbnail", System.Data.SqlDbType.NVarChar, 50, "Thumbnail"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CatImage", System.Data.SqlDbType.NVarChar, 50, "CatImage"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryName", System.Data.SqlDbType.NVarChar, 50, "CategoryName"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryID", System.Data.SqlDbType.Int, 4, "CategoryID"))
        '
        'SqlUpdateCommand1
        '
        Me.SqlUpdateCommand1.CommandText = "UPDATE Categories SET Description = @Description, Thumbnail = @Thumbnail, CatImag" & _
        "e = @CatImage, CategoryName = @CategoryName, CategoryID = @CategoryID WHERE (Cat" & _
        "egoryID = @Original_CategoryID) AND (CatImage = @Original_CatImage OR @Original_" & _
        "CatImage IS NULL AND CatImage IS NULL) AND (CategoryName = @Original_CategoryNam" & _
        "e OR @Original_CategoryName IS NULL AND CategoryName IS NULL) AND (Thumbnail = @" & _
        "Original_Thumbnail OR @Original_Thumbnail IS NULL AND Thumbnail IS NULL); SELECT" & _
        " Description, Thumbnail, CatImage, CategoryName, CategoryID FROM Categories WHER" & _
        "E (CategoryID = @CategoryID)"
        Me.SqlUpdateCommand1.Connection = Me.SqlConnection1
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Description", System.Data.SqlDbType.NVarChar, 1073741823, "Description"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Thumbnail", System.Data.SqlDbType.NVarChar, 50, "Thumbnail"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CatImage", System.Data.SqlDbType.NVarChar, 50, "CatImage"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryName", System.Data.SqlDbType.NVarChar, 50, "CategoryName"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryID", System.Data.SqlDbType.Int, 4, "CategoryID"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryID", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryID", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CatImage", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CatImage", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryName", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryName", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_Thumbnail", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "Thumbnail", System.Data.DataRowVersion.Original, Nothing))
        '
        'SqlDeleteCommand1
        '
        Me.SqlDeleteCommand1.CommandText = "DELETE FROM Categories WHERE (CategoryID = @Original_CategoryID) AND (CatImage = " & _
        "@Original_CatImage OR @Original_CatImage IS NULL AND CatImage IS NULL) AND (Cate" & _
        "goryName = @Original_CategoryName OR @Original_CategoryName IS NULL AND Category" & _
        "Name IS NULL) AND (Thumbnail = @Original_Thumbnail OR @Original_Thumbnail IS NUL" & _
        "L AND Thumbnail IS NULL)"
        Me.SqlDeleteCommand1.Connection = Me.SqlConnection1
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryID", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryID", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CatImage", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CatImage", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryName", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryName", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_Thumbnail", System.Data.SqlDbType.NVarChar, 50, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "Thumbnail", System.Data.DataRowVersion.Original, Nothing))
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=Ch8TaraStoreSQL;password=passwor" & _
        "d"
        '
        'DS_EditCat1
        '
        Me.DS_EditCat1.DataSetName = "DS_EditCat"
        Me.DS_EditCat1.Locale = New System.Globalization.CultureInfo("en-US")
        '
        'DataView1
        '
        Me.DataView1.Table = Me.DS_EditCat1.Categories
        CType(Me.DS_EditCat1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Protected WithEvents MyLabel As System.Web.UI.WebControls.Label
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents MyDG As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlInsertCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlUpdateCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDeleteCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents DS_EditCat1 As Chapter8.DS_EditCat
    Protected WithEvents DataView1 As System.Data.DataView

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
        SqlDataAdapter1.Fill(DS_EditCat1)
        If Not Page.IsPostBack Then
            Page.DataBind()
        End If
    End Sub

    Private Sub MyDG_CancelCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles MyDG.CancelCommand
        MyDG.EditItemIndex = -1
        MyDG.DataBind()
    End Sub

    Private Sub MyDG_EditCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles MyDG.EditCommand
        MyDG.EditItemIndex = e.Item.ItemIndex
        MyDG.DataBind()
    End Sub

    Private Sub MyDG_UpdateCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles MyDG.UpdateCommand
        Dim key As String = MyDG.DataKeys(e.Item.ItemIndex).ToString()
        Dim CatName, CatImage, CatThumb, CatDesc As String
        Dim tb As TextBox
        tb = CType(e.Item.Cells(2).Controls(0), TextBox)
        CatName = tb.Text
        tb = CType(e.Item.Cells(3).Controls(0), TextBox)
        CatImage = tb.Text
        tb = CType(e.Item.Cells(4).Controls(0), TextBox)
        CatThumb = tb.Text
        tb = CType(e.Item.Cells(5).Controls(0), TextBox)
        CatDesc = tb.Text

        Dim r As DS_EditCat.CategoriesRow
        r = DS_EditCat1.Categories.FindByCategoryID(key)
        r.CategoryName = CatName
        r.CatImage = CatImage
        r.Thumbnail = CatThumb
        r.Description = CatDesc

        SqlDataAdapter1.Update(DS_EditCat1)
        MyDG.EditItemIndex = -1
        MyDG.DataBind()
    End Sub
End Class
