//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/25/12, 12:30:30
  // ----------------------------------------------------
  // Method: Calc_Billable_Amt
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

[Slip:8]Billable_Amt:10:=Round:C94(([Slip:8]Rate:9/3600)*[Slip:8]Time_used:8;2)
