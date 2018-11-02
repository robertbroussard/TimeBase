//%attributes = {}
SET MENU BAR:C67(1)

FORM SET INPUT:C55([_Invoice_Old:2];"Input")
FORM SET OUTPUT:C54([_Invoice_Old:2];"Output")

ALL RECORDS:C47([_Invoice_Old:2])
$ref:=Open form window:C675([_Invoice_Old:2];"Output")
SET WINDOW TITLE:C213("Invoices")
MODIFY SELECTION:C204([_Invoice_Old:2];*;*)
CLOSE WINDOW:C154($ref)
