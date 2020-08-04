//%attributes = {}
C_LONGINT:C283($1)
C_TEXT:C284($0)
C_TEXT:C284($String)
C_LONGINT:C283($maxpos)

$string:="Donec id ante massa. Donec ut sem vestibulum, faucibus sapien quis, porta dui. Nullam pellentesque quis odio in sodales. Pellentesque cursus augue sed purus eleifend ornare. Aenean leo velit, pretium sed lorem sit amet, efficitur scelerisque dolor. Ma"+"ecenas sit amet urna sed ipsum tempor scelerisque. Sed quis felis odio. Donec semper, velit ac tristique molestie, odio felis imperdiet nunc, convallis vehicula diam enim ac sem. Aenean congue porttitor sodales. Donec facilisis quis purus quis vulputa"+"te. Praesent eget neque semper, molestie dui in, vestibulum erat. Mauris sed nisi id elit elementum egestas nec et tortor. Nullam interdum metus nec urna dapibus pretium. Nunc vulputate nibh at lacinia dictum. Phasellus luctus maximus sapien, tempor f"+"eugiat nisi rhoncus a. Sed convallis magna nec mi lacinia, vel tempus orci mollis. "
$maxpos:=Length:C16($string)-$1
$0:=Substring:C12($string;(Random:C100+Random:C100+Random:C100)%$maxpos;$1)



