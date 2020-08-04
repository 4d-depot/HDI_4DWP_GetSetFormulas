C_COLLECTION:C1488($_pictures)
C_OBJECT:C1216($target)
C_OBJECT:C1216($section)
C_OBJECT:C1216($subSectionLeft)
C_OBJECT:C1216($target)

OBJECT SET VISIBLE:C603(*;"step1@";False:C215)
OBJECT SET VISIBLE:C603(*;"step2@";True:C214)

Case of 
	: (_target=1)
		$target:=WParea
		
	: (_target=2)
		$target:=WP Get body:C1516(WParea)
		
	: (_target=3)
		
		$target:=Null:C1517
		
	: (_target=4)
		
		$target:=Null:C1517
		
	: (_target=5)
		$target:=WP Text range:C1341(WP Get section:C1581(WParea;1);wk start text:K81:165;wk end text:K81:164)
		
	: (_target=6)  //"section 2 left header")  //6
		
		$target:=Null:C1517
		
		$section:=WP Get section:C1581(WParea;2)  // section 2
		If ($section#Null:C1517)
			$subSectionLeft:=WP Get subsection:C1582($section;wk left page:K81:204)
			If ($subSectionLeft#Null:C1517)
				$target:=WP Get header:C1503($subSectionLeft)
			End if 
		End if 
		
	: (_target=7)
		
		$_pictures:=WP Get elements:C1550(WParea;wk type image anchored:K81:248)
		If ($_pictures.length>0)
			$target:=$_pictures[0]
		End if 
		
	: (_target=8)  // pictures
		$_pictures:=WP Get elements:C1550(WParea;wk type image inline:K81:247)
		If ($_pictures.length>0)
			$target:=$_pictures[0]
		End if 
		
End case 


If ($target#Null:C1517)
	
	WP SELECT:C1348(*;"WParea";$target)
	
End if 