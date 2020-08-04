//%attributes = {}
C_LONGINT:C283($1)
C_LONGINT:C283($ps;$win)
C_OBJECT:C1216($options)
C_TEXT:C284($cr)

Case of 
	: (Count parameters:C259=0)
		$ps:=New process:C317(Current method name:C684;0;Current method name:C684;0)
		
	Else 
		
		ARRAY TEXT:C222($_allowedMethods;0)
		APPEND TO ARRAY:C911($_allowedMethods;"GetLogo")
		APPEND TO ARRAY:C911($_allowedMethods;"GetString")
		APPEND TO ARRAY:C911($_allowedMethods;"GetFullAddress")
		APPEND TO ARRAY:C911($_allowedMethods;"GetEmptyString")
		APPEND TO ARRAY:C911($_allowedMethods;"GetPage")
		
		
		SET ALLOWED METHODS:C805($_allowedMethods)
		
		If (Shift down:C543)  //  for debug purpose only
			$win:=Open form window:C675("HDI";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
		Else 
			$win:=Open form window:C675("HDI";Pop up form window:K39:11;Horizontally centered:K39:1;Vertically centered:K39:4)
		End if 
		
		$options:=New object:C1471
		
		$options.title:="work with formulas in my 4D Write Pro documents?"
		
		$options.blog:="blog.4d.com"
		$options.info:="Managing formulas inside 4D Write Pro documents"  //ex : "4D View Pro feature"
		
		$options.minimumVersion:="1820"  // 18R2 means 18R2   1801 means 18.1 (do not use !)
		
		  //$options.license:=4D View license  // IF ANY NEEDED
		$options.license:=4D Write license:K44:2  // IF ANY NEEDED
		
		
		DIALOG:C40("HDI";$options)
		CLOSE WINDOW:C154
		
		If ($options.quit=True:C214)
			QUIT 4D:C291
		Else 
			$win:=Open form window:C675("HDI2";Plain form window:K39:10;Horizontally centered:K39:1;Vertically centered:K39:4)
			DIALOG:C40("HDI2")
			CLOSE WINDOW:C154
		End if 
		
End case 
