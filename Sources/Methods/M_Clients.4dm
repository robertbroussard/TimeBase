//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 19:35:22
  // ----------------------------------------------------
  // Method: M_Clients
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


  //SET MENU BAR(1)


FORM SET INPUT:C55([Client:7];"Input")
FORM SET OUTPUT:C54([Client:7];"Output")

ALL RECORDS:C47([Client:7])



  //$Sel:=Records in selection([Client])
  //$RecsInFile:=Records in table([Client])



$ref:=Open form window:C675([Client:7];"Output")
  //SET WINDOW TITLE("Clients, "+String($Sel;"###,###,##0")+" of "+String($RecsInFile;"###,###,##0")+" records")

SetWindowTitle (->[Client:7];"Clients")

MODIFY SELECTION:C204([Client:7];Multiple selection:K50:3;False:C215)
CLOSE WINDOW:C154($ref)


