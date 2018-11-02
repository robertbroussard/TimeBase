//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 20:30:52
  // ----------------------------------------------------
  // Method: StripSpaces
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

  // Method: StripSpaces (text) -> text
  // Strips leading and trailing spaces from the text that is passed to it.

C_TEXT:C284($1;$0;$theText)

$theText:=$1

If ($theText#"")
	
	  // Get rid of leading spaces.
	While (Substring:C12($theText;1;1)=" ")
		$theText:=Substring:C12($theText;2)
	End while 
	
	  // Get rid of trailing spaces.
	While (Substring:C12($theText;Length:C16($theText);1)=" ")
		$theText:=Substring:C12($theText;1;Length:C16($theText)-1)
	End while 
	
End if   // The string is not blank.

$0:=$theText