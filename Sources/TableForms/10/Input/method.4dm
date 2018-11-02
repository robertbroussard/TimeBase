
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/25/12, 12:54:43
  // ----------------------------------------------------
  // Method: [Attorney].Input
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------




If (Is new record:C668([Attorney:10]))
	  //Gen_SlipSequenceNumber 
	[Attorney:10]ID:1:=Sequence number:C244([Attorney:10])
End if 
