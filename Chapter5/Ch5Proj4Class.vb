' Miles Rausch
' Web Application Programming II
' Ch5Proj4Class.vb

Public Class Ch5Proj4Class
    Private StoreImage As String = "StoreLocation.jpg"

    Public Property NewStoreImage() As String
        Get
            Return StoreImage
        End Get
        Set(ByVal Value As String)
            StoreImage = Value
        End Set
    End Property

    Public Sub ChangeImage(ByVal StoreLocation As String)
        Select Case StoreLocation
            Case "Chicago Store"
                StoreImage = "ChicagoStore.jpg"
            Case "New York Store"
                StoreImage = "NewYorkStore.jpg"
            Case Else
                StoreImage = "StoreLocation.jpg"
        End Select
    End Sub
End Class
