' Miles Rausch
' Web Application Programming II
' Exam2_2.aspx

Imports System.Data.SqlClient

Public Class Exam2_2
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()
        Me.SqlConnection1 = New System.Data.SqlClient.SqlConnection
        Me.SqlDataAdapter1 = New System.Data.SqlClient.SqlDataAdapter
        Me.SqlDeleteCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlInsertCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlSelectCommand1 = New System.Data.SqlClient.SqlCommand
        Me.SqlUpdateCommand1 = New System.Data.SqlClient.SqlCommand
        Me.DsStores1 = New Chapter8.dsStores
        Me.DataView1 = New System.Data.DataView
        CType(Me.DsStores1, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).BeginInit()
        '
        'SqlConnection1
        '
        Me.SqlConnection1.ConnectionString = "workstation id=""M1300-MILES"";packet size=4096;user id=sa;password=password;data s" & _
        "ource=""(local)\NETSDK"";persist security info=False;initial catalog=pubs"
        '
        'SqlDataAdapter1
        '
        Me.SqlDataAdapter1.DeleteCommand = Me.SqlDeleteCommand1
        Me.SqlDataAdapter1.InsertCommand = Me.SqlInsertCommand1
        Me.SqlDataAdapter1.SelectCommand = Me.SqlSelectCommand1
        Me.SqlDataAdapter1.TableMappings.AddRange(New System.Data.Common.DataTableMapping() {New System.Data.Common.DataTableMapping("Table", "stores", New System.Data.Common.DataColumnMapping() {New System.Data.Common.DataColumnMapping("stor_id", "stor_id"), New System.Data.Common.DataColumnMapping("stor_name", "stor_name"), New System.Data.Common.DataColumnMapping("stor_address", "stor_address"), New System.Data.Common.DataColumnMapping("city", "city"), New System.Data.Common.DataColumnMapping("state", "state"), New System.Data.Common.DataColumnMapping("zip", "zip")})})
        Me.SqlDataAdapter1.UpdateCommand = Me.SqlUpdateCommand1
        '
        'SqlDeleteCommand1
        '
        Me.SqlDeleteCommand1.CommandText = "DELETE FROM stores WHERE (stor_id = @Original_stor_id) AND (city = @Original_city" & _
        " OR @Original_city IS NULL AND city IS NULL) AND (state = @Original_state OR @Or" & _
        "iginal_state IS NULL AND state IS NULL) AND (stor_address = @Original_stor_addre" & _
        "ss OR @Original_stor_address IS NULL AND stor_address IS NULL) AND (stor_name = " & _
        "@Original_stor_name OR @Original_stor_name IS NULL AND stor_name IS NULL) AND (z" & _
        "ip = @Original_zip OR @Original_zip IS NULL AND zip IS NULL)"
        Me.SqlDeleteCommand1.Connection = Me.SqlConnection1
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_id", System.Data.SqlDbType.NVarChar, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_id", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_city", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "city", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_state", System.Data.SqlDbType.NVarChar, 2, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "state", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_address", System.Data.SqlDbType.NVarChar, 40, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_address", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_name", System.Data.SqlDbType.NVarChar, 40, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_name", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlDeleteCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_zip", System.Data.SqlDbType.NVarChar, 5, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "zip", System.Data.DataRowVersion.Original, Nothing))
        '
        'SqlInsertCommand1
        '
        Me.SqlInsertCommand1.CommandText = "INSERT INTO stores(stor_id, stor_name, stor_address, city, state, zip) VALUES (@s" & _
        "tor_id, @stor_name, @stor_address, @city, @state, @zip); SELECT stor_id, stor_na" & _
        "me, stor_address, city, state, zip FROM stores WHERE (stor_id = @stor_id)"
        Me.SqlInsertCommand1.Connection = Me.SqlConnection1
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_id", System.Data.SqlDbType.NVarChar, 4, "stor_id"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_name", System.Data.SqlDbType.NVarChar, 40, "stor_name"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_address", System.Data.SqlDbType.NVarChar, 40, "stor_address"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@city", System.Data.SqlDbType.NVarChar, 20, "city"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@state", System.Data.SqlDbType.NVarChar, 2, "state"))
        Me.SqlInsertCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@zip", System.Data.SqlDbType.NVarChar, 5, "zip"))
        '
        'SqlSelectCommand1
        '
        Me.SqlSelectCommand1.CommandText = "SELECT stor_id, stor_name, stor_address, city, state, zip FROM stores"
        Me.SqlSelectCommand1.Connection = Me.SqlConnection1
        '
        'SqlUpdateCommand1
        '
        Me.SqlUpdateCommand1.CommandText = "UPDATE stores SET stor_id = @stor_id, stor_name = @stor_name, stor_address = @sto" & _
        "r_address, city = @city, state = @state, zip = @zip WHERE (stor_id = @Original_s" & _
        "tor_id) AND (city = @Original_city OR @Original_city IS NULL AND city IS NULL) A" & _
        "ND (state = @Original_state OR @Original_state IS NULL AND state IS NULL) AND (s" & _
        "tor_address = @Original_stor_address OR @Original_stor_address IS NULL AND stor_" & _
        "address IS NULL) AND (stor_name = @Original_stor_name OR @Original_stor_name IS " & _
        "NULL AND stor_name IS NULL) AND (zip = @Original_zip OR @Original_zip IS NULL AN" & _
        "D zip IS NULL); SELECT stor_id, stor_name, stor_address, city, state, zip FROM s" & _
        "tores WHERE (stor_id = @stor_id)"
        Me.SqlUpdateCommand1.Connection = Me.SqlConnection1
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_id", System.Data.SqlDbType.NVarChar, 4, "stor_id"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_name", System.Data.SqlDbType.NVarChar, 40, "stor_name"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@stor_address", System.Data.SqlDbType.NVarChar, 40, "stor_address"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@city", System.Data.SqlDbType.NVarChar, 20, "city"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@state", System.Data.SqlDbType.NVarChar, 2, "state"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@zip", System.Data.SqlDbType.NVarChar, 5, "zip"))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_id", System.Data.SqlDbType.NVarChar, 4, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_id", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_city", System.Data.SqlDbType.NVarChar, 20, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "city", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_state", System.Data.SqlDbType.NVarChar, 2, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "state", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_address", System.Data.SqlDbType.NVarChar, 40, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_address", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_stor_name", System.Data.SqlDbType.NVarChar, 40, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "stor_name", System.Data.DataRowVersion.Original, Nothing))
        Me.SqlUpdateCommand1.Parameters.Add(New System.Data.SqlClient.SqlParameter("@Original_zip", System.Data.SqlDbType.NVarChar, 5, System.Data.ParameterDirection.Input, False, CType(0, Byte), CType(0, Byte), "zip", System.Data.DataRowVersion.Original, Nothing))
        '
        'DsStores1
        '
        Me.DsStores1.DataSetName = "dsStores"
        Me.DsStores1.Locale = New System.Globalization.CultureInfo("en-US")
        '
        'DataView1
        '
        Me.DataView1.Table = Me.DsStores1.stores
        CType(Me.DsStores1, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DataView1, System.ComponentModel.ISupportInitialize).EndInit()

    End Sub
    Protected WithEvents SqlConnection1 As System.Data.SqlClient.SqlConnection
    Protected WithEvents SqlDataAdapter1 As System.Data.SqlClient.SqlDataAdapter
    Protected WithEvents SqlSelectCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlInsertCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlUpdateCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents SqlDeleteCommand1 As System.Data.SqlClient.SqlCommand
    Protected WithEvents DsStores1 As Chapter8.dsStores
    Protected WithEvents DataView1 As System.Data.DataView
    Protected WithEvents MyDG As System.Web.UI.WebControls.DataGrid

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
        SqlDataAdapter1.Fill(DsStores1)
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
        Dim StoreName, StoreAdd, StoreCity, StoreState, StoreZip As String
        Dim tb As TextBox

        tb = CType(e.Item.Cells(3).Controls(0), TextBox)
        StoreName = tb.Text
        tb = CType(e.Item.Cells(4).Controls(0), TextBox)
        StoreAdd = tb.Text
        tb = CType(e.Item.Cells(5).Controls(0), TextBox)
        StoreCity = tb.Text
        tb = CType(e.Item.Cells(6).Controls(0), TextBox)
        StoreState = tb.Text
        tb = CType(e.Item.Cells(7).Controls(0), TextBox)
        StoreZip = tb.Text

        Dim r As dsStores.storesRow
        r = DsStores1.stores.FindBystor_id(key)
        r.stor_name = StoreName
        r.stor_address = StoreAdd
        r.state = StoreState
        r.zip = StoreZip

        SqlDataAdapter1.Update(DsStores1)
        MyDG.EditItemIndex = -1
        MyDG.DataBind()
    End Sub

    Sub MyDG_DeleteCommand(ByVal source As Object, ByVal e As System.Web.UI.WebControls.DataGridCommandEventArgs) Handles MyDG.DeleteCommand
        Dim objCM As SqlCommand
        Dim strCommand As String = "DELETE FROM stores WHERE stor_id = @StoreId"

        objCM = New SqlCommand(strCommand, SqlConnection1)
        objCM.Parameters.Add(New SqlParameter("@StoreId", SqlDbType.Int))
        objCM.Parameters("@StoreId").Value = MyDG.DataKeys(CInt(e.Item.ItemIndex))

        SqlConnection1.Open()
        objCM.ExecuteNonQuery()
        SqlConnection1.Close()

        SqlDataAdapter1.Update(DsStores1)
        MyDG.EditItemIndex = -1
        MyDG.DataBind()
    End Sub

End Class
