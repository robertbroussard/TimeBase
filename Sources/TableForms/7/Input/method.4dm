  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 22:41:20
  // ----------------------------------------------------
  // Method: [Client].Input
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------



Case of 
	: (Form event:C388=On Load:K2:1)
		If (Is new record:C668([Client:7]))
			[Client:7]ID:1:=Sequence number:C244([Client:7])
		End if 
End case 
