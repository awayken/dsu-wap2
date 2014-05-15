' Miles Rausch
' Web Application Programming II
' Ch8Case3_EditCat.aspx

Imports System.Data.SqlClient

Public Class Ch8Case3_EditCat
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        Me.DsCat1 = New Chapter8.dsCat
        Me.DataView1 = New System.Data.DataView
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlInsertCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlUpdateCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlDeleteCommand1 = New System.Data.SqlClient.SqlCommand
        CType(Me.DsCat1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.DeleteCommand = Me.SqlDeleteCommand1
        Me.SqlDataAdapter1.InsertCommand = Me.SqlInsertCommand1
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "Categories", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("CategoryID", "CategoryID"), New System.Data.Common.DataColumnMapping("CategoryName", "CategoryName")})})
        Me.SqlDataAdapter1.UpdateCommand = Me.SqlUpdateCommand1
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;data source=""(local)\Net" & _
        "SDK"";persist security info=True;initial catalog=GrocerToGo;password=password"
        '
        'DsCat1
        '
        Me.DsCat1.DataSetName = "dsCat"
        Me.DsCat1.Locale = New System.Globalization.CultureInfo("en-US")
        '
        'DataView1
        '
        Me.DataView1.Table = Me.DsCat1.Categories
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT CategoryID, CategoryName FROM Categories"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1
        '
        'SqlInsertCommand1
        '
        Me.SqlInsertCommand1.CommandText = "INSERT INTO Categories(CategoryName) VALUES (@CategoryName); SELECT CategoryID, C" & _
        "ategoryName FROM Categories WHERE (CategoryID = @@IDENTITY)"
        Me.SqlInsertCommand1.Connection = Me.SqlConnection1
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryName", System.Data.SqlDbType.NVarChar, 75, "CategoryName"))
        '
        'SqlUpdateCommand1
        '
        Me.SqlUpdateCommand1.CommandText = "UPDATE Categories SET CategoryName = @CategoryName WHERE (CategoryID = @Original_" & _
        "CategoryID) AND (CategoryName = @Original_CategoryName OR @Original_CategoryName" & _
        " IS NULL AND CategoryName IS NULL); SELECT CategoryID, CategoryName FROM Categor" & _
        "ies WHERE (CategoryID = @CategoryID)"
        Me.SqlUpdateCommand1.Connection = Me.SqlConnection1
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryName", System.Data.SqlDbType.NVarChar, 75, "CategoryName"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryID", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryID", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryName", System.Data.SqlDbType.NVarChar, 75, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryName", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@CategoryID", System.Data.SqlDbType.Int, 4, "CategoryID"))
        '
        'SqlDeleteCommand1
        '
        Me.SqlDeleteCommand1.CommandText = "DELETE FROM Categories WHERE (CategoryID = @Original_CategoryID) AND (CategoryNam" & _
        "e = @Original_CategoryName OR @Original_CategoryName IS NULL AND CategoryName IS" & _
        " NULL)"
        Me.SqlDeleteCommand1.Connection = Me.SqlConnection1
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryID", System.Data.SqlDbType.Int, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryID", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_CategoryName", System.Data.SqlDbType.NVarChar, 75, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "CategoryName", System.Data.DataRowVersion.Original, Nothing))
        CType(Me.DsCat1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Protected WithEvents hyperDelete As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperEdit As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperHome As System.Web.UI.WebControls.HyperLink
    Protected WithEvents hyperAdd As System.Web.UI.WebControls.HyperLink
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents DsCat1 As Chapter8.dsCat
    Protected WithEvents DataView1 As System.Data.DataView
    Protected WithEvents MyDG As System.Web.UI.WebControls.DataGrid
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlInsertCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlUpdateCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDeleteCommand1 As System.Data.SqlClient.SqlCommand

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
        SqlDataAdapter1.Fill(DsCat1)
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
        Dim CatName As String
        Dim tb As TextBox

        tb = CType(e.Item.Cells(2).Controls(0), TextBox)
        CatName = tb.Text
        
        Dim r As dsCat.CategoriesRow
        r = DsCat1.Categories.FindByCategoryID(key)
        r.CategoryName = CatName

        SqlDataAdapter1.Update(DsCat1)
        MyDG.EditItemIndex = -1
        MyDG.DataBind()

        Response.Redirect("Ch8Case3_Home.aspx")
    End Sub

End Class
