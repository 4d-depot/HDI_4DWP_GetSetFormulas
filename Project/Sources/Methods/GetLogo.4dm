//%attributes = {}

C_LONGINT:C283($1)
C_PICTURE:C286($0)

C_TEXT:C284($path)

C_PICTURE:C286($picture)
C_TEXT:C284($pictName)
C_LONGINT:C283($width;$height)
C_REAL:C285($random)

Case of 
	: (Count parameters:C259=0)
		$pictName:="4D.png"
	: ($1=0)
		$pictName:="4D.png"
	: ($1=1)
		$pictName:="4DR.png"
End case 

$path:=Get 4D folder:C485(Current resources folder:K5:16)+$pictName

READ PICTURE FILE:C678($path;$picture)

PICTURE PROPERTIES:C457($picture;$width;$height)

  // 0.8 et 1.2
$random:=(8+(Random:C100%5))/10

TRANSFORM PICTURE:C988($picture;Scale:K61:2;$random;$random)

CONVERT PICTURE:C1002($picture;".png")

$0:=$picture

