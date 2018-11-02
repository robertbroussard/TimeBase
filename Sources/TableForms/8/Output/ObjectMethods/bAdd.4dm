
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 22:38:47
  // ----------------------------------------------------
  // Method: [Slip].Output.bAdd
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


  //ADD RECORD([Slip])

CREATE SET:C116([Slip:8];"CurrentSelection")
Repeat   // Loop until the user cancels
	ADD RECORD:C56([Slip:8];*)  // Add a record to the table
	ADD TO SET:C119([Slip:8];"CurrentSelection")
Until (OK=0)  // Until the user cancels

USE SET:C118("CurrentSelection")
CLEAR SET:C117("CurrentSelection")