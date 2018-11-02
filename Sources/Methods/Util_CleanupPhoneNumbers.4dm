//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 23:29:14
  // ----------------------------------------------------
  // Method: Util_CleanupPhoneNumbers
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


ALL RECORDS:C47([Client:7])
FIRST RECORD:C50([Client:7])

$rec:=Records in selection:C76([Client:7])

For ($i;1;$rec)
	[Client:7]Phone_1:9:=CleanUpNumbersOnly ([Client:7]Phone_1:9)
	[Client:7]Phone_2:10:=CleanUpNumbersOnly ([Client:7]Phone_2:10)
	SAVE RECORD:C53([Client:7])
	NEXT RECORD:C51([Client:7])
	MESSAGE:C88(String:C10($i)+" of "+String:C10($rec))
End for 

