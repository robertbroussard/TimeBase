//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 14:40:49
  // ----------------------------------------------------
  // Method: Util_AssignClient2SlipIDs
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


ALL RECORDS:C47([Client:7])
FIRST RECORD:C50([Client:7])

$rec:=Records in selection:C76([Client:7])
For ($i;1;$rec)
	QUERY:C277([Slip:8];[Slip:8]Client:6=[Client:7]Nickname:3)
	  //Open window
	MESSAGE:C88("processing "+String:C10($i))
	$Sel:=Records in selection:C76([Slip:8])
	
	If ($Sel<1)
		  //no slips found???
		[Client:7]Notes:26:=[Client:7]Notes:26+"No Slips Found via '"+[Client:7]Nickname:3+"'."
		SAVE RECORD:C53([Client:7])
	End if 
	
	FIRST RECORD:C50([Slip:8])
	For ($j;1;$Sel)
		[Slip:8]Client_ID:5:=[Client:7]ID:1
		SAVE RECORD:C53([Slip:8])
		NEXT RECORD:C51([Slip:8])
	End for 
	
	NEXT RECORD:C51([Client:7])
End for 
CLOSE WINDOW:C154
BEEP:C151