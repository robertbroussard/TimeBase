//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 20:19:47
  // ----------------------------------------------------
  // Method: Util_Trim_ClientName
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

  //Begin SQL
  //SELECT TRIM(Nickname)
  //FROM Client;
  //End SQL


ALL RECORDS:C47([Client:7])
FIRST RECORD:C50([Client:7])

$rec:=Records in selection:C76([Client:7])

For ($i;1;$rec)
	$OrigName:=[Client:7]Nickname:3
	[Client:7]Nickname:3:=StripSpaces ([Client:7]Nickname:3)
	If ($OrigName#[Client:7]Nickname:3)
		SAVE RECORD:C53([Client:7])
		BEEP:C151
	End if 
	NEXT RECORD:C51([Client:7])
	MESSAGE:C88(String:C10($i)+" of "+String:C10($rec))
End for 

  //[Slip]Client:=StripSpaces ([Slip]Client)

ALL RECORDS:C47([Slip:8])
FIRST RECORD:C50([Slip:8])

$rec:=Records in selection:C76([Slip:8])

For ($i;1;$rec)
	$OrigName:=[Slip:8]Client:6
	[Slip:8]Client:6:=StripSpaces ([Slip:8]Client:6)
	If ($OrigName#[Slip:8]Client:6)
		SAVE RECORD:C53([Slip:8])
		BEEP:C151
	End if 
	NEXT RECORD:C51([Slip:8])
	MESSAGE:C88(String:C10($i)+" of "+String:C10($rec))
End for 
