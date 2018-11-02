//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 07/16/12, 02:28:27
  // ----------------------------------------------------
  // Method: DataRange_ClientQuery
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

C_DATE:C307(vStartDate;vEndDate)

If (Macintosh option down:C545)
	QUERY:C277(Current form table:C627->)
Else 
	
	COPY NAMED SELECTION:C331([Slip:8];"UserSort")
	
	ALL RECORDS:C47([Slip:8])
	DISTINCT VALUES:C339([Slip:8]Client:6;cb_Client)
	
	$document_window:=Open form window:C675("Slip_Selector_Data_Client";Plain form window:K39:10)
	DIALOG:C40("Slip_Selector_Data_Client")
	
	
	
	If (ok=1)
		  //ALERT("OK=1")
		
		If (vStartDate#!00-00-00!) & (vEndDate#!00-00-00!)
			QUERY:C277([Slip:8];[Slip:8]Date:2>=vStartDate;*)
			QUERY:C277([Slip:8];[Slip:8]Date:2<=vEndDate;*)
			QUERY:C277([Slip:8];[Slip:8]Client:6=cb_Client{cb_Client})
			
		Else 
			QUERY:C277([Slip:8];[Slip:8]Client:6=cb_Client{cb_Client})
			
		End if 
		
		
		CLOSE WINDOW:C154($document_window)
		SetWindowTitle (->[Slip:8];"Slips")
		
	Else 
		  //ALERT("Cancel")
		USE NAMED SELECTION:C332("UserSort")
		
	End if 
	
	CLEAR NAMED SELECTION:C333("UserSort")
	  //"Slip_Selector_Data_Client"
	
End if 