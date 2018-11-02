//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 22:48:24
  // ----------------------------------------------------
  // Method: Util_SetRateLevel
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


ALL RECORDS:C47([Slip:8])

FIRST RECORD:C50([Slip:8])

$sel:=Records in selection:C76([Slip:8])

For ($i;1;$sel)
	QUERY:C277([Attorney:10];[Attorney:10]Attorney:2=[Slip:8]Attorney:4)
	
	Case of 
		: ([Slip:8]Rate:9=[Attorney:10]Rate1:3)
			[Slip:8]Rate_Level:21:=1
		: ([Slip:8]Rate:9=[Attorney:10]Rate2:4)
			[Slip:8]Rate_Level:21:=2
		: ([Slip:8]Rate:9=[Attorney:10]Rate3:5)
			[Slip:8]Rate_Level:21:=3
		: ([Slip:8]Rate:9=[Attorney:10]Rate4:6)
			[Slip:8]Rate_Level:21:=4
		: ([Slip:8]Rate:9=[Attorney:10]Rate5:7)
			[Slip:8]Rate_Level:21:=5
		: ([Slip:8]Rate:9=[Attorney:10]Rate6:8)
			[Slip:8]Rate_Level:21:=6
		Else 
			[Slip:8]Rate_Level:21:=0
			BEEP:C151
	End case 
	SAVE RECORD:C53([Slip:8])
	
	
	NEXT RECORD:C51([Slip:8])
End for 