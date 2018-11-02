
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 22:40:57
  // ----------------------------------------------------
  // Method: [Slip].Input
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


Case of 
	: (Form event:C388=On Load:K2:1)
		  //ARRAY TEXT(pComboClient;0)
		  //ARRAY TEXT(pclient;0)
		
		
		
		If (Is new record:C668([Slip:8]))
			Gen_SlipSequenceNumber 
			QUERY:C277([Attorney:10];[Attorney:10]Attorney:2="Cannon, Neal")
			[Slip:8]Attorney:4:=[Attorney:10]Attorney:2
			[Slip:8]Rate_Level:21:=3
			[Slip:8]Rate:9:=[Attorney:10]Rate3:5
			
			GOTO OBJECT:C206([Slip:8]Client:6)
		Else 
			GOTO OBJECT:C206([Slip:8]Description:7)
			
		End if 
		
		
		
		  //
		  //QUERY([Attorney];[Attorney]Attorney=[Slip]Attorney)  ``Cannon, Neal
		  //
		  //ARRAY LONGINT(puRateLevel;6)
		  //ARRAY REAL(BillRateAmount;6)
		  //puRateLevel{1}:=1
		  //BillRateAmount{1}:=[Attorney]Rate1
		  //
		  //puRateLevel{2}:=2
		  //BillRateAmount{2}:=[Attorney]Rate2
		  //
		  //puRateLevel{3}:=3
		  //BillRateAmount{3}:=[Attorney]Rate3
		  //
		  //puRateLevel{4}:=4
		  //BillRateAmount{4}:=[Attorney]Rate4
		  //
		  //puRateLevel{5}:=5
		  //BillRateAmount{5}:=[Attorney]Rate5
		  //
		  //puRateLevel{6}:=6
		  //BillRateAmount{6}:=[Attorney]Rate6
		
		
End case 
