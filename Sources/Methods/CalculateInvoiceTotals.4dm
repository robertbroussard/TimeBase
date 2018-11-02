//%attributes = {}
  //Calculate the subtotal, tax and the total of the invoice
[_Invoice_Old:2]Subtotal:4:=Sum:C1([_Line Items_Old:3]Total:4)
[_Invoice_Old:2]Tax:5:=Sum:C1([_Line Items_Old:3]Tax Rate:5)
[_Invoice_Old:2]Total:6:=[_Invoice_Old:2]Subtotal:4+[_Invoice_Old:2]Tax:5