//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 19:53:34
  // ----------------------------------------------------
  // Method: Util_Assign_SlipIDs
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------



ALL RECORDS:C47([Slip:8])
FIRST RECORD:C50([Slip:8])

$rec:=Records in selection:C76([Slip:8])
For ($i;1;$rec)
	QUERY:C277([Client:7];[Client:7]Nickname:3=[Slip:8]Client:6)
	  //Open window
	MESSAGE:C88("processing "+String:C10($i))
	$Sel:=Records in selection:C76([Client:7])
	Case of 
		: ($Sel=1)
			[Client:7]Slip_ID:2:=[Slip:8]Slip_ID:1
			SAVE RECORD:C53([Client:7])
		: ($Sel>1)
			  //found too many???
		: ($Sel=0)
			  //not found
	End case 
	
	
	NEXT RECORD:C51([Slip:8])
End for 
CLOSE WINDOW:C154
BEEP:C151