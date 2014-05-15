'c:\inetpub\wwwroot\Chapter1

'Hello.vb - display Hello World
'Created 01/24/2006

'Run by typing "vbc hello.vb" at command line.

Imports System
Public Module Hello
    Sub Main()
        Dim strHello as String = "Hello World"
        Console.Writeline(strHello)
    End Sub
End Module
