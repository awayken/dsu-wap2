Public Class ASPPlaceholder
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents PanelPH As System.Web.UI.WebControls.Panel
    Protected WithEvents placeholder As System.Web.UI.WebControls.PlaceHolder

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
        ' Create a label to contain text
        Dim MyLabel As New Label
        placeholder.Controls.Add(MyLabel)
        MyLabel.Text = "Waterford Gifts"
        MyLabel.ForeColor = System.Drawing.Color.FromName("#004040")
        MyLabel.Font.Name = "Trebuchet MS"
        MyLabel.Font.Size = MyLabel.Font.Size.Larger
        MyLabel.ID = "lblMessage"

        ' Create HTML controls using the Literal Control class
        Dim MyLiteralBR As New Literal
        placeholder.Controls.Add(MyLiteralBR)
        MyLiteralBR.Text = "<br><br>"

        ' Create an image hyperlink
        Dim MyImageLink As New HyperLink
        placeholder.Controls.Add(MyImageLink)
        MyImageLink.Text = "Click here to view a larger butterfly"
        MyImageLink.ForeColor = System.Drawing.Color.FromName("#004040")
        MyImageLink.Font.Name = "Trebuchet MS"
        MyImageLink.Font.Size = MyLabel.Font.Size.Smaller
        MyImageLink.ImageUrl = "images/SmallWaterfordButterfly.gif"
        MyImageLink.ID = "Butterfly"
        MyImageLink.NavigateUrl = "images/LgButterfly.jpg"
        MyImageLink.Target = "_new"

        ' Create HTML controls using the Literal Control class
        Dim MyLiteralBR2 As New Literal
        placeholder.Controls.Add(MyLiteralBR2)
        MyLiteralBR2.Text = "<br><br>"

        ' Create a hyperlink
        Dim MyLink As New HyperLink
        placeholder.Controls.Add(MyLink)
        MyLink.Text = "Click here to see a larger image"
        MyLink.ForeColor = System.Drawing.Color.FromName("#004040")
        MyLink.Font.Name = "Trebuchet MS"
        MyLink.Font.Size = MyLabel.Font.Size.Smaller
        MyLink.ID = "HLHome"
        MyLink.NavigateUrl = "images/LgButterfly.jpg"
        MyLink.Target = "_new"

        ' Create HTML controls using the Literal Control class
        Dim MyLiteralBR3 As New Literal
        placeholder.Controls.Add(MyLiteralBR3)
        MyLiteralBR3.Text = "<br><br>"
    End Sub

End Class
