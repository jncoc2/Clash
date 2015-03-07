Const $BATTLE_MAX_TIME = 180 ;Seconds

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

Func WaitForBattleToEnd()
   ;WORK IN PROGRESS
   $starsWanted = 2
   $timedOut = False
   $startTime = _Now()
   While ((CountStars() < $starsWanted) And Not $timedOut)
	  Sleep(1000)
	  If SecondsElapsedSince($startTime) > $BATTLE_MAX_TIME Then
		 $timedOut = True
	  EndIf
   WEnd
   If $timedOut Then
	  ;ToDo- see if its possible to detect the black bar underneath the "return home"
	  ;      button on a defeat, rather than waiting 180 seconds
	  Sleep(2000)
	  CloseBattleFinishedScreen()
   Else
	  Surrender()
   EndIf
   Sleep(5000)
EndFunc