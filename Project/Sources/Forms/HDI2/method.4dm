
Case of 
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.trace:=False:C215
		OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
		OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
		OBJECT SET VISIBLE:C603(*;"btnShowHide";False:C215)
		
		
		ALL RECORDS:C47([CUSTOMERS:2])
		
		
		ARRAY TEXT:C222(_target;0)
		APPEND TO ARRAY:C911(_target;"Document")
		APPEND TO ARRAY:C911(_target;"Body")
		APPEND TO ARRAY:C911(_target;"(all) headers")
		APPEND TO ARRAY:C911(_target;"(all) footers")
		APPEND TO ARRAY:C911(_target;"First section")
		APPEND TO ARRAY:C911(_target;"section 2 left header")  //6
		APPEND TO ARRAY:C911(_target;"Anchored pictures")  //7
		APPEND TO ARRAY:C911(_target;"Inline pictures")  //8
		
		_target:=1
		
	: (Form event code:C388=On Page Change:K2:54)
		
		If (FORM Get current page:C276>1)
			
			QUERY:C277([SAMPLES:3];[SAMPLES:3]Title:3=String:C10(FORM Get current page:C276))
			WPArea:=WP New:C1317([SAMPLES:3]WP:2)
			
			OBJECT SET VISIBLE:C603(*;"step1@";True:C214)
			OBJECT SET VISIBLE:C603(*;"step2@";False:C215)
			
			OBJECT SET VISIBLE:C603(*;"btnReload";True:C214)
			OBJECT SET VISIBLE:C603(*;"btnTrace";True:C214)
			OBJECT SET VISIBLE:C603(*;"btnHtml";True:C214)
			OBJECT SET VISIBLE:C603(*;"btnShowHide";True:C214)
			
		Else 
			
			OBJECT SET VISIBLE:C603(*;"btnReload";False:C215)
			OBJECT SET VISIBLE:C603(*;"btnTrace";False:C215)
			OBJECT SET VISIBLE:C603(*;"btnHtml";False:C215)
			OBJECT SET VISIBLE:C603(*;"btnShowHide";False:C215)
			
		End if 
		
End case 

