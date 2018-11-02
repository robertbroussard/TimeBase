Case of 
	: (Form event:C388=On Load:K2:1) & (Is new record:C668([_Client_Old:1]))
		[_Client_Old:1]Client ID:1:=String:C10(Sequence number:C244([_Client_Old:1]))
End case 