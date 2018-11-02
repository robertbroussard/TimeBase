//%attributes = {}
  // Name: UTIL_ConvertPICTs
  // Path: UTIL_ConvertPICTs
  //
  // Purpose: Convert all PICT formatted images in the 
  // Picture Libraray to .PNG images and preserve transparency
  // by converting the white channel to transparent
  //
  // The 4D Pack Plugin must be installed to use this method

  //C_LONGINT($Ndx;$SOA;$RIS;$PictRef_L)
  //C_TEXT($PictName_T)
  //C_PICTURE($Pict_G)
  //C_POINTER($Pict_P)
  //ARRAY LONGINT($PictRef_aL;0)
  //ARRAY TEXT($PictName_aT;0)
  //PICTURE LIBRARY LIST($PictRef_aL;$PictName_aT)
  //$SOA:=Size of array($PictRef_aL)
  //If ($SOA>0)
  //For ($Ndx;1;$SOA)  // for each picture
  //$PictRef_L:=$PictRef_aL{$Ndx}
  //$PictName_T:=$PictName_aT{$Ndx}
  //GET PICTURE FROM LIBRARY($PictRef_aL{$Ndx};$Pict_G)
  //$Pict_P:=->$Pict_G  // passage of a pointer
  //If (_o_AP Is Picture Deprecated($Pict_P)=1)  // if format is obsolete
  //CONVERT PICTURE($Pict_G;".PNG")  // conversion to png
  //TRANSFORM PICTURE($Pict_G;Transparency;0x00FFFFFF)  //0x00FFFFFF is white
  //SET PICTURE TO LIBRARY($Pict_G;$PictRef_L;$PictName_T)  // and storage in the library
  //End if 
  //End for 
  //Else 
  //ALERT("The picture library is empty.")
  //End if 

