
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 07/16/12, 14:49:26
  // ----------------------------------------------------
  // Method: [Slip].Output.bOmitSubset
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------



CREATE SET:C116([Slip:8];"CurrentSelection")
DIFFERENCE:C122("CurrentSelection";"UserSet";"CurrentSelection")
USE SET:C118("CurrentSelection")
CLEAR SET:C117("CurrentSelection")  // Clear the set