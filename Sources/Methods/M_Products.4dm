//%attributes = {}
SET MENU BAR:C67(1)


FORM SET INPUT:C55([_Product_Old:4];"Input")
FORM SET OUTPUT:C54([_Product_Old:4];"Output")

ALL RECORDS:C47([_Product_Old:4])
$ref:=Open form window:C675([_Product_Old:4];"Output")
SET WINDOW TITLE:C213("Products")
MODIFY SELECTION:C204([_Product_Old:4];*;*)
CLOSE WINDOW:C154($ref)
