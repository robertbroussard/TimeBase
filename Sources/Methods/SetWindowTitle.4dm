//%attributes = {}

  // ----------------------------------------------------
  // User name (OS): Robert Broussard MP
  // Date and time: 04/23/12, 22:52:15
  // ----------------------------------------------------
  // Method: SetWindowTitle
  // Description
  // 
  //
  // Parameters
  // ----------------------------------------------------
  //$1 Pointer to Table
  //$2 Text value of chosen Table name...

C_POINTER:C301($1;$Table)
C_TEXT:C284($2;$TableTextValue;$DisplayFilter)

$Table:=$1
$TableTextValue:=$2
$DisplayFilter:="###,###,##0"

$Sel:=Records in selection:C76($Table->)
$RecsInFile:=Records in table:C83($Table->)

If ($Sel=0)
	ALL RECORDS:C47($Table->)
End if 

SET WINDOW TITLE:C213($TableTextValue+", "+String:C10($Sel;$DisplayFilter)+" of "+String:C10($RecsInFile;$DisplayFilter)+" records.")
