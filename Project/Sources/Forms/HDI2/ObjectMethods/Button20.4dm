C_COLLECTION:C1488($_findReplace;$_findReplaceFound)
C_OBJECT:C1216($findReplace;$expression)

If (Form:C1466.trace)
	TRACE:C157
End if 


$_findReplace:=New collection:C1472  // collection of objects where each object contain 2 formulas, "find" and "replace"

$findReplace:=New object:C1471("find";Formula:C1597([CUSTOMERS:2]Name:2+" "+[CUSTOMERS:2]Firstname:3);"replace";Formula:C1597(GetFullAddress ))
$_findReplace.push($findReplace)

$findReplace:=New object:C1471("find";Formula:C1597(Current date:C33);"replace";Formula:C1597(String:C10(Current date:C33;System date long:K1:3)))
$_findReplace.push($findReplace)

$findReplace:=New object:C1471("find";Formula:C1597(String:C10(Current time:C178));"replace";Formula:C1597(String:C10(Current time:C178;HH MM AM PM:K7:5)))
$_findReplace.push($findReplace)

$findReplace:=New object:C1471("find";Formula:C1597(1000+Random:C100);"replace";Formula:C1597(String:C10(1000+Random:C100;"|big")))
$_findReplace.push($findReplace)

$findReplace:=New object:C1471("find";Formula:C1597(Pi:K30:1);"replace";Formula:C1597(String:C10(Pi:K30:1;"|dec")))
$_findReplace.push($findReplace)


Form:C1466.formulas:=WP Get formulas:C1702(WParea)
For each ($findReplace;$_findReplace)
	$_findReplaceFound:=Form:C1466.formulas.query("formula.source = :1";$findReplace.find.source)
	For each ($expression;$_findReplaceFound)
		WP INSERT FORMULA:C1703($expression.range;$findReplace.replace;wk replace:K81:177)
	End for each 
End for each 


OBJECT SET VISIBLE:C603(*;"step1@";False:C215)
OBJECT SET VISIBLE:C603(*;"step2@";True:C214)
