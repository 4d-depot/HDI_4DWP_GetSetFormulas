C_COLLECTION:C1488($_formulas)
C_OBJECT:C1216($range;$newFormula;$formulaRange)
C_TEXT:C284($formulaSource)

$range:=WP Selection range:C1340(*;"WParea")

$_formulas:=WP Get formulas:C1702($range)
If ($_formulas.length>0)
	$formulaSource:=$_formulas[0].formula.source
	$formulaRange:=$_formulas[0].range
	
	EDIT FORMULA:C806([CUSTOMERS:2];$formulaSource)
	
	If (ok=1)
		$newFormula:=Formula from string:C1601($formulaSource)
		WP INSERT FORMULA:C1703($formulaRange;$newFormula;wk replace:K81:177)
	End if 
	
End if 

