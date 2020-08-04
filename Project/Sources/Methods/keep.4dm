//%attributes = {}
  //C_OBJECT($1;$expression)
  //C_TEXT($2;$check)

  //C_LONGINT($val)

  //$expression:=$1.value
  //$check:=$2

  //$1.result:=False

  //Case of 
  //: ($check="header") | ($check="footer")

  //If ($expression.range.container.stylesheet#Null)
  //If ($expression.range.container.stylesheet=("@"+$check+"@"))  //
  //$1.result:=True
  //End if 
  //End if 

  //: ($check="anchoredID")

  //If ($expression.anchoredID#Null)
  //$1.result:=True
  //End if 

  //End case 


