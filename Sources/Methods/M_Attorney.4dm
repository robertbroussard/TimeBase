//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 22:00:12
  // ----------------------------------------------------
  // Method: M_Attorney
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


FORM SET INPUT:C55([Client:7];"Input")
FORM SET OUTPUT:C54([Client:7];"Output")

ALL RECORDS:C47([Attorney:10])

$ref:=Open form window:C675([Attorney:10];"Output")
  //SET WINDOW TITLE("Clients, "+String($Sel;"###,###,##0")+" of "+String($RecsInFile;"###,###,##0")+" records")

SetWindowTitle (->[Attorney:10];"Attorneys")

MODIFY SELECTION:C204([Attorney:10];Multiple selection:K50:3;False:C215)
CLOSE WINDOW:C154($ref)


