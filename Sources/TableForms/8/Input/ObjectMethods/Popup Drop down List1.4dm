
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 23:11:31
  // ----------------------------------------------------
  // Method: [Slip].Input.Popup Drop down List1
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

  //GET POINTER


Case of 
	: (Form event:C388=On Load:K2:1)
		
		ARRAY LONGINT:C221(puRateLevel;6)
		puRateLevel{1}:=1
		puRateLevel{2}:=2
		puRateLevel{3}:=3
		puRateLevel{4}:=4
		puRateLevel{5}:=5
		puRateLevel{6}:=6
		
		If (Record number:C243([Slip:8])<0)  //new record
			puRateLevel:=3  //display a default value
		Else   //existing record, display stored value
			puRateLevel:=Find in array:C230(puRateLevel;[Slip:8]Rate_Level:21)
		End if 
		
	: (Form event:C388=On Clicked:K2:4)
		[Slip:8]Rate_Level:21:=puRateLevel{puRateLevel}
		$rateLevel:=[Slip:8]Rate_Level:21
		QUERY:C277([Attorney:10];[Attorney:10]Attorney:2=[Slip:8]Attorney:4)
		
		Case of 
			: ($rateLevel=1)
				[Slip:8]Rate:9:=[Attorney:10]Rate1:3
			: ($rateLevel=2)
				[Slip:8]Rate:9:=[Attorney:10]Rate2:4
			: ($rateLevel=3)
				[Slip:8]Rate:9:=[Attorney:10]Rate3:5
			: ($rateLevel=4)
				[Slip:8]Rate:9:=[Attorney:10]Rate4:6
			: ($rateLevel=5)
				[Slip:8]Rate:9:=[Attorney:10]Rate5:7
			: ($rateLevel=6)
				[Slip:8]Rate:9:=[Attorney:10]Rate6:8
		End case 
		
		Calc_Billable_Amt 
		
	: (Form event:C388=On Unload:K2:2)
		CLEAR VARIABLE:C89(puRateLevel)
End case 

  //
  //Case of 
  //
  //
  //  //: (Form event=On Clicked)  //user modified selection
  //  //[Slip]Rate_Level:=puRateLevel{puRateLevel}  //field gets new value
  //
  //: (Form event=On Unload)
  //CLEAR VARIABLE(puRateLevel)
  //End case 