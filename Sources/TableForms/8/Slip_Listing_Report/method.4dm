Case of 
		  // ...
	: (Form event:C388=On Header:K2:17)
		Case of 
			: (Before selection:C198([Slip:8]))
				  //do nothing, object already populated
				OBJECT SET VISIBLE:C603(*;"@_SlipDetailRptHeader@";True:C214)
			Else 
				
				
				OBJECT SET VISIBLE:C603(*;"@_SlipDetailRptHeader@";False:C215)
		End case 
End case 