Public Class CheckBoxRadio
    Inherits System.Web.UI.Page

#Region " Web Form Designer Generated Code "

    'This call is required by the Web Form Designer.
    <System.Diagnostics.DebuggerStepThrough()> Private Sub InitializeComponent()

    End Sub
    Protected WithEvents lblRBLHash As System.Web.UI.WebControls.Label
    Protected WithEvents lblRBLArray As System.Web.UI.WebControls.Label
    Protected WithEvents LblCBLArray As System.Web.UI.WebControls.Label
    Protected WithEvents lblRBL As System.Web.UI.WebControls.Label
    Protected WithEvents lblCBLHash As System.Web.UI.WebControls.Label
    Protected WithEvents lblCBL As System.Web.UI.WebControls.Label
    Protected WithEvents btnSubmit As System.Web.UI.WebControls.Button
    Protected WithEvents CheckBoxList1 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents RadioButtonList1 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents CheckBoxList2 As System.Web.UI.WebControls.CheckBoxList
    Protected WithEvents RadioButtonList2 As System.Web.UI.WebControls.RadioButtonList
    Protected WithEvents Label1 As System.Web.UI.WebControls.Label

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
        If Not Page.IsPostBack() Then
            Dim arr1 As New ArrayList(9)
            arr1.Add("Belleek Colleen Vase")
            arr1.Add("Shamrock Paperweight")
            arr1.Add("Business Card Holder")

            Dim MyHash As New Hashtable(9)
            MyHash.Add("Belleek Colleen Vase", 34)
            MyHash.Add("Shamrock Paperweight", 99)
            MyHash.Add("Business Card Holder", 59)

            ' Insert the code here



        Else
        End If
    End Sub

    Private Sub btnSubmit_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        Dim strResult1 As String
        If CheckBoxList1.SelectedIndex > -1 Then
            strResult1 = ""
            Dim i As Integer
            For i = 0 To CheckBoxList1.Items.Count - 1
                If CheckBoxList1.Items(i).Selected Then
                    strResult1 += "&nbsp;&nbsp;&nbsp;" & _
                    CheckBoxList1.Items(i).Text + "<br />"
                End If
            Next
        Else
            strResult1 = "You did not select a category.<br />"
        End If

        Dim strResult2 As String
        If CheckBoxList2.SelectedIndex > -1 Then
            strResult2 = ""
            Dim i As Integer
            For i = 0 To CheckBoxList2.Items.Count - 1
                If CheckBoxList2.Items(i).Selected Then
                    strResult2 += "&nbsp;&nbsp;&nbsp;" & _
                    CheckBoxList2.Items(i).Text + "<br />"
                End If
            Next
        Else
            strResult2 = "You did not select a category.<br />"
        End If

        lblCBL.Text = _
            "<b>CheckBoxList1 = </b><br />" & _
            strResult1 & "<br />" & _
            "<b>CheckBoxList2 = </b><br />" & _
            strResult2 & "<br />"

        Dim strResult3 As String
        If RadioButtonList1.SelectedItem.ToString <> "" Then
            strResult3 = RadioButtonList1.SelectedItem.ToString()
        Else
            strResult3 = "You did not select a category.<br />"
        End If

        Dim strResult4 As String
        If RadioButtonList1.SelectedItem.ToString <> "" Then
            strResult4 = RadioButtonList2.SelectedItem.ToString()
        Else
            strResult4 = "You did not select a price.<br />"
        End If

        lblRBL.Text = _
            "<b>RadioButtonList1 = </b><br />&nbsp;&nbsp;&nbsp;" & _
            strResult3 & _
            "<br /><br />" & _
            "<b>RadioButtonList2 = </b><br />&nbsp;&nbsp;&nbsp;" & _
            strResult4
    End Sub

End Class
