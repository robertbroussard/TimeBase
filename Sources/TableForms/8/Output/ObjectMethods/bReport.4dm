
  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/25/12, 16:20:00
  // ----------------------------------------------------
  // Method: [Slip].Output.bPrint
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------


C_REAL:C285(vBillableSlips;vUnbillableSlips)
C_TIME:C306(vBillableSlipsHrs;vUnbillableSlipsHrs)
C_TEXT:C284(vLastRecDate_t;vFirstRecDate_t)

vUnbillableSlips:=0
vBillableSlips:=0

vBillableSlipsHrs:=?00:00:00?
vUnbillableSlipsHrs:=?00:00:00?

$rec:=Records in selection:C76([Slip:8])

If ($rec>125)
	CONFIRM:C162("You have selected "+String:C10($rec;"###,###,##0")+" slip records for printing.... Continue?")
Else 
	ok:=1
End if 

If (ok=1)
	
	DISTINCT VALUES:C339([Slip:8]Client:6;$aClientName)
	$sizeDisArr:=Size of array:C274($aClientName)
	
	If ($sizeDisArr>1)
		
		ALERT:C41("This report was designed to report a detailed listing of slips for a single client. You have selected "+String:C10($sizeDisArr)+" clients. Please change the selection and try again.")
		
	Else 
		FORM SET OUTPUT:C54([Slip:8];"Slip_Listing_Report")
		
		FIRST RECORD:C50([Slip:8])
		RELATE ONE:C42([Slip:8])
		
		vClientFullName_t:=[Client:7]Full_Name:4
		vAttorneyFullName_t:=[Attorney:10]Full Name:11
		For ($i;1;$rec)
			If ([Slip:8]Bill_Status:13="Unbillable") | ([Slip:8]Bill_Status:13="No charge")
				
				vUnbillableSlips:=vUnbillableSlips+[Slip:8]Billable_Amt:10
				vUnbillableSlipsHrs:=vUnbillableSlipsHrs+[Slip:8]Time_used:8
			Else 
				vBillableSlips:=vBillableSlips+[Slip:8]Billable_Amt:10
				vBillableSlipsHrs:=vBillableSlipsHrs+[Slip:8]Time_used:8
			End if 
			
			NEXT RECORD:C51([Slip:8])
		End for 
		
		
		ORDER BY:C49([Slip:8];[Slip:8]Date:2;>)
		LAST RECORD:C200([Slip:8])
		vLastRecDate_t:=String:C10([Slip:8]Date:2)
		FIRST RECORD:C50([Slip:8])
		vFirstRecDate_t:=String:C10([Slip:8]Date:2)
		BREAK LEVEL:C302(0)
		ACCUMULATE:C303([Slip:8]Billable_Amt:10)
		If (Macintosh option down:C545)
			PRINT SELECTION:C60([Slip:8])
		Else 
			PRINT SELECTION:C60([Slip:8];*)
		End if 
		FORM SET OUTPUT:C54([Slip:8];"Output")
		
	End if 
End if 