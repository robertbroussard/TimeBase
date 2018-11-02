
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 18:21:55
  // ----------------------------------------------------
  // Method: [Slip].Input.Combo Box
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------
If (Form event:C388=On After Keystroke:K2:26)
	  //ARRAY TEXT(pComboClient;0)
	  //$RealTimeEntry:=Get edited text
	QUERY:C277([Client:7];[Client:7]Nickname:3=pComboClient{0}+"@")
	SELECTION TO ARRAY:C260([Client:7]Nickname:3;pComboClient)
	pComboClient:=0
End if 
  //
  //
