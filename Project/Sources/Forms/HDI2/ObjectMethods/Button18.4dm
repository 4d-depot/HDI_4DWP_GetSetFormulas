C_COLLECTION:C1488($_expressions;$_pictures)
C_OBJECT:C1216($picture;$expression)
C_OBJECT:C1216($target;$section;$subSectionLeft)

  //APPEND TO ARRAY(_target;"Document") //1
  //APPEND TO ARRAY(_target;"Body") //2
  //APPEND TO ARRAY(_target;"(all) headers") //3
  //APPEND TO ARRAY(_target;"(all) footers") //4
  //APPEND TO ARRAY(_target;"First section") //5
  //APPEND TO ARRAY(_target;"Anchored pictures") //6
  //APPEND TO ARRAY(_target;"Inline pictures") //7

If (Form:C1466.trace)
	TRACE:C157
End if 

Case of 
	: (_target=1)
		$target:=WParea
		
	: (_target=2)
		$target:=WP Get body:C1516(WParea)
		
	: (_target=3)
		
	: (_target=4)
		
	: (_target=5)
		$target:=WP Get section:C1581(WParea;1)
		
	: (_target=6)
		$section:=WP Get section:C1581(WParea;2)  // section 2
		If ($section#Null:C1517)
			$subSectionLeft:=WP Get subsection:C1582($section;wk left page:K81:204)
			If ($subSectionLeft#Null:C1517)
				$target:=WP Get header:C1503($subSectionLeft)
				
			End if 
		End if 
		
	: (_target=7)
		
	: (_target=8)  // pictures
		
End case 

If ($target#Null:C1517)
	
	WP FREEZE FORMULAS:C1708($target)
	
Else 
	  // loop in array items
	For each ($expression;Form:C1466.formulas.reverse())
		
		If ($expression.range#Null:C1517)
			WP FREEZE FORMULAS:C1708($expression.range)
		Else 
			
			If ($expression.id#Null:C1517)
				$picture:=WP Get element by ID:C1549(WParea;$expression.id)
				WP FREEZE FORMULAS:C1708($picture)
			Else 
				
			End if 
			
		End if 
	End for each 
End if 


OBJECT SET VISIBLE:C603(*;"step1@";True:C214)
OBJECT SET VISIBLE:C603(*;"step2@";False:C215)

