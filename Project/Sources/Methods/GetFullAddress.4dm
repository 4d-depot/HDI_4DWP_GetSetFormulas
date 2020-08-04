//%attributes = {}
C_TEXT:C284($text)
C_TEXT:C284($0)

If (True:C214)
	
	$text:=""
	$text:=$text+[CUSTOMERS:2]Name:2+" "+[CUSTOMERS:2]Firstname:3+"\r"
	$text:=$text+[CUSTOMERS:2]Address:4+"\r"
	$text:=$text+[CUSTOMERS:2]ZipCode:5+" "+[CUSTOMERS:2]City:6+"\r"
	$text:=$text+[CUSTOMERS:2]Country:7
	
	$0:=$text
	
Else 
	
	  //$doc:=WP New
	  //WP SET TEXT($doc;[CUSTOMERS]Name+" "+[CUSTOMERS]Firstname;wk append)
	  //WP INSERT BREAK($doc;wk line break;wk append)
	
	  //$0:=$doc
	
End if 