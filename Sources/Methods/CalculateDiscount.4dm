//%attributes = {}
  //Calculate each line item total by verifying beforehand if we need to apply a discount
If ([_Line Items_Old:3]Discount Rate:6#0)
	[_Line Items_Old:3]Total:4:=[_Product_Old:4]Unit Price:3*[_Line Items_Old:3]Quantity:3*(1-([_Line Items_Old:3]Discount Rate:6/100))
Else 
	[_Line Items_Old:3]Total:4:=[_Product_Old:4]Unit Price:3*[_Line Items_Old:3]Quantity:3
End if 
  //Calculate the tax per line item
[_Line Items_Old:3]Tax Rate:5:=[_Line Items_Old:3]Total:4*[_Product_Old:4]Tax Rate:4/100
