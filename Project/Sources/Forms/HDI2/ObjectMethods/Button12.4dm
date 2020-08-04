C_COLLECTION:C1488($_expressions)
C_OBJECT:C1216($target;$expression)

$target:=WP Get section:C1581(WParea;4)
Form:C1466.formulas:=WP Get formulas:C1702($target)

  // extra info
For each ($expression;Form:C1466.formulas)
	$expression.comments:="section 4"
End for each 