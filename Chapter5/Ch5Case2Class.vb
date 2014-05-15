' Miles Rausch
' Web Application Programming II
' Ch5Case2Class.vb

Public Class Ch5Case2Class
    Private strStoreName As String = "Tara Store"

    Public ReadOnly Property StoreName() As String
        Get
            Return strStoreName
        End Get
    End Property

    Private strStoreAddress As String = "555 Michigan Ave, Chicago IL 60016"

    Public ReadOnly Property StoreAddress() As String
        Get
            Return strStoreAddress
        End Get
    End Property

    Private strStoreEmail As String = "info@tarastore.com"

    Public ReadOnly Property StoreEmail() As String
        Get
            Return strStoreEmail
        End Get
    End Property

    Private strStorePhone As String = "800-555-5555"

    Public ReadOnly Property StorePhone() As String
        Get
            Return strStorePhone
        End Get
    End Property

    Private strStoreDesc As String = "We provide a variety of Irish cultural products which includes: china, crystal, pottery, food, clothing, books, music, jewelry, bridal, and gifts."

    Public ReadOnly Property StoreDesc() As String
        Get
            Return strStoreDesc
        End Get
    End Property

    Private intStoreVisits As Int32 = 3245120

    Public ReadOnly Property StoreVisits() As Int32
        Get
            Return intStoreVisits
        End Get
    End Property

    Private decStoreTaxRate As Decimal = 0.08

    Public ReadOnly Property StoreTaxRate() As Decimal
        Get
            Return decStoreTaxRate
        End Get
    End Property
End Class