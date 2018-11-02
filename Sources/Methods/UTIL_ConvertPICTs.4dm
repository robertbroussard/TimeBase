//%attributes = {}
  // Name: UTIL_ConvertPICTs
  // Path: UTIL_ConvertPICTs
  //
  // Purpose: Convert all PICT formatted images in the 
  // Picture Libraray to .PNG images and preserve transparency
  // by converting the white channel to transparent
  //
  // The 4D Pack Plugin must be installed to use this method

C_LONGINT:C283($Ndx;$SOA;$RIS;$PictRef_L)
C_TEXT:C284($PictName_T)
C_PICTURE:C286($Pict_G)
C_POINTER:C301($Pict_P)
ARRAY LONGINT:C221($PictRef_aL;0)
ARRAY TEXT:C222($PictName_aT;0)
PICTURE LIBRARY LIST:C564($PictRef_aL;$PictName_aT)
$SOA:=Size of array:C274($PictRef_aL)
If ($SOA>0)
	For ($Ndx;1;$SOA)  // for each picture
		$PictRef_L:=$PictRef_aL{$Ndx}
		$PictName_T:=$PictName_aT{$Ndx}
		GET PICTURE FROM LIBRARY:C565($PictRef_aL{$Ndx};$Pict_G)
		$Pict_P:=->$Pict_G  // passage of a pointer
		If (_o_AP Is Picture Deprecated($Pict_P)=1)  // if format is obsolete
			CONVERT PICTURE:C1002($Pict_G;".PNG")  // conversion to png
			TRANSFORM PICTURE:C988($Pict_G;Transparency:K61:11;0x00FFFFFF)  //0x00FFFFFF is white
			SET PICTURE TO LIBRARY:C566($Pict_G;$PictRef_L;$PictName_T)  // and storage in the library
		End if 
	End for 
Else 
	ALERT:C41("The picture library is empty.")
End if 

