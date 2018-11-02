//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/24/12, 22:25:49
  // ----------------------------------------------------
  // Method: Util_CreateBillableStatusList
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


ALL RECORDS:C47([Slip:8])
DISTINCT VALUES:C339([Slip:8]Bill_Status:13;$aBSDV)

ARRAY TO LIST:C287($aBSDV;"Bill Status")
BEEP:C151
