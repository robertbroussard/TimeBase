Case of 
	: (Form event:C388=On Load:K2:1) & (Is new record:C668([_Invoice_Old:2]))
		[_Invoice_Old:2]Invoice ID:1:=String:C10(Sequence number:C244([_Invoice_Old:2]))
		[_Invoice_Old:2]Invoice Date:3:=Current date:C33
	: (Form event:C388=On Clicked:K2:4)
		CalculateInvoiceTotals 
End case 
