//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 14:29:50
  // ----------------------------------------------------
  // Method: Show_Slips
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

  //SET MENU BAR(1)


FORM SET INPUT:C55([Slip:8];"Input")
FORM SET OUTPUT:C54([Slip:8];"Output")

ALL RECORDS:C47([Slip:8])
$ref:=Open form window:C675([Slip:8];"Output")
  //SET WINDOW TITLE("[Slip]")
SetWindowTitle (->[Slip:8];"Slips")
MODIFY SELECTION:C204([Slip:8];Multiple selection:K50:3;False:C215)
CLOSE WINDOW:C154($ref)

  //
  //  //Called from the menu, this routine simply opens a list of meetings
  //
  //READ ONLY(*)  //So we don't inadvertently lock records
  //
  //$WinRef:=Open form window([Meetings];"List";Plain no zoom box window;On the Left;At the Top;*)
  //If (Count parameters=0)
  //ALL RECORDS([Meetings])
  //End if 
  //MODIFY SELECTION([Meetings];*)
  //CLOSE WINDOW($WinRef)
