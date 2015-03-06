Func AttackSearch()
   MouseClick("left", 50, 480)
   Sleep(1000)
EndFunc

Func FindMatch()
   MouseClick("left", 155, 415)
   Sleep(1000)
EndFunc

Func NextMatch()
   MouseClick("left", 830, 400)
   Sleep(1000)
EndFunc

Func CountStars()
   $count = 0
   If PixelGetColor(820, 400) == 13158853 Then
	  $count = $count + 1
   EndIf
   If PixelGetColor(838, 400) == 12962245 Then
	  $count = $count + 1
   EndIf
   ;ToDo: Need to detect 3 star?
   Return $count
EndFunc

Func Surrender()
   MouseClick("left", 50, 415)
   Sleep(1000)
   MouseClick("left", 515, 340)
   Sleep(1000)
   CloseBattleFinishedScreen()
EndFunc

Func CloseBattleFinishedScreen()
   MouseClick("left", 450, 445)
   Sleep(5000)
EndFunc