C_COLLECTION:C1488($_expressions;$_pictures;$_pictureFormulas)
C_OBJECT:C1216($picture)
C_OBJECT:C1216($section;$subSectionLeft;$target)
C_OBJECT:C1216($picture_elem)

  //APPEND TO ARRAY(_target;"Document") //1
  //APPEND TO ARRAY(_target;"Body") //2
  //APPEND TO ARRAY(_target;"(all) headers") //3
  //APPEND TO ARRAY(_target;"(all) footers") //4
  //APPEND TO ARRAY(_target;"First section") //5
  //APPEND TO ARRAY(_target;"section 2 left header")  //6
  //APPEND TO ARRAY(_target;"Anchored pictures") //7
  //APPEND TO ARRAY(_target;"Inline pictures") //8

If (Form:C1466.trace)
	TRACE:C157
End if 

Form:C1466.formulas:=New collection:C1472

Case of 
	: (_target=1)
		Form:C1466.formulas:=WP Get formulas:C1702(WParea)
		
	: (_target=2)
		Form:C1466.formulas:=WP Get formulas:C1702(WP Get body:C1516(WParea))
		
	: (_target=3)
		
		Form:C1466.formulas:=WP Get formulas:C1702(WParea).query("range.container.styleSheet = :1";"@header@")  // ex : section1firstheader
		
	: (_target=4)
		
		Form:C1466.formulas:=WP Get formulas:C1702(WParea).query("range.container.styleSheet = :1";"@footer@")  // ex : section1footerleft
		
	: (_target=5)
		Form:C1466.formulas:=WP Get formulas:C1702(WP Get section:C1581(WParea;1))
		
	: (_target=6)  //"section 2 left header")  //6
		
		$section:=WP Get section:C1581(WParea;2)  // section 2
		If ($section#Null:C1517)
			$subSectionLeft:=WP Get subsection:C1582($section;wk left page:K81:204)
			If ($subSectionLeft#Null:C1517)
				$target:=WP Get header:C1503($subSectionLeft)
				If ($target#Null:C1517)
					Form:C1466.formulas:=WP Get formulas:C1702($target)
				End if 
			End if 
		End if 
		
	: (_target=7)
		
		Form:C1466.formulas:=WP Get formulas:C1702(WParea).query("anchoredID # null")
		
	: (_target=8)  // pictures
		
		
		If (Shift down:C543)
			
			Form:C1466.formulas:=WP Get formulas:C1702(WP Picture range:C1347(WParea))
			
		Else 
			
			$_pictures:=WP Get elements:C1550(WParea;wk type image inline:K81:247)
			For each ($picture_elem;$_pictures)
				
				$_pictureFormulas:=WP Get formulas:C1702($picture_elem)  // one or zero
				If ($_pictureFormulas.length=1)
					  //$_pictureFormulas[0].source:=$picture_elem  // memo the picture element inside the formula (for display)
					Form:C1466.formulas.push($_pictureFormulas[0])
				Else 
					  // simple image, not the result of an expression
				End if 
				
			End for each 
		End if 
		
End case 