Public Class uploadfile
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents HyperLink1 As System.Web.UI.WebControls.HyperLink
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label
    Protected WithEvents txtFileName As System.Web.UI.HtmlControls.HtmlInputText
    Protected WithEvents btnUpload As System.Web.UI.HtmlControls.HtmlInputButton
    Protected WithEvents lblDirections As System.Web.UI.HtmlControls.HtmlGenericControl
    Protected WithEvents uploadFilePath As System.Web.UI.HtmlControls.HtmlInputFile

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
 
    Private Sub btnUpload_ServerClick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnUpload.ServerClick
        If Not (uploadFilePath.PostedFile Is Nothing) Then
            Try
                Dim strFilePath As String
                strFilePath = System.IO.Path.GetDirectoryName(Server.MapPath("uploadfile.aspx"))
                uploadFilePath.PostedFile.SaveAs((strFilePath & "\Uploads\" & txtFileName.Value))
                lblDirections.InnerHtml = "Your file was uploaded successfully<br />" & "to the webserver at<br />" & "<b>" & strFilePath & "\Uploads\" & txtFileName.Value & "</b>"
                HyperLink1.NavigateUrl = "http://localhost/Chapter4/Uploads/" & txtFileName.Value
                HyperLink1.Visible = True
            Catch ex As Exception
                lblDirections.InnerHtml = "Error saving file.<br />" & ex.Message
            End Try
        End If
    End Sub
End Class
