
If (Records in selection:C76([_Invoice_Old:2])>=1)
	[_Client_Old:1]Total Sales:13:=Sum:C1([_Invoice_Old:2]Subtotal:4)
End if 