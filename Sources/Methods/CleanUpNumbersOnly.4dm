//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 23:25:45
  // ----------------------------------------------------
  // Method: CleanUpNumbersOnly
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------

  //Method: CleanUpNumbersOnly
  //November 28, 1999
  //Created by: Robert J. Broussard
  //          UserSoft Technology (www.usersoft.com)
  //Mod 5/20/00

  //$1  string field that contains numbers.

  //Sample Call
  //$Result:=CleanUpNumbersOnly ([Customers]HomePhone)

C_TEXT:C284($1;$0;$text)

If ($1#"")
	$text:=Replace string:C233($1;".";"")
	$text:=Replace string:C233($text;"-";"")
	$text:=Replace string:C233($text;"e";"")
	$text:=String:C10(Num:C11($text))
	$0:=$text
End if 