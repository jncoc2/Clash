Const $BLUESTACKS_WINDOW_TITLE = "BlueStacks App Player"

global $paused = False

Func SetWindowPositionAndSize($windowTitle, $x, $y, $width = 908, $height = 599)
   WinMove($windowTitle, "", $x, $y, $width, $height)
   Sleep(1000)
EndFunc

Func ActivateClashOfClans()
   If Not WinActive($BLUESTACKS_WINDOW_TITLE) Then
	  WinActivate($BLUESTACKS_WINDOW_TITLE)
	  Sleep(1000)
   EndIf
EndFunc

Func AntiIdle()
   if Not $paused Then
	  ActivateClashOfClans()
	  SetWindowPositionAndSize($BLUESTACKS_WINDOW_TITLE, 0, 0)
	  MouseClickDrag("left", 10, 60, 10, 70, 1)
	  MouseClickDrag("left", 10, 70, 10, 60, 1)
   EndIf
EndFunc

Func IdleForMinutes($timeInMinutes)
   $timeToWait = $timeInMinutes
   While $timeToWait > 0
	  $timeToWait = $timeToWait - 1
	  AntiIdle()
	  Sleep(60000)
   WEnd
EndFunc

Func TogglePause()
   $paused = Not $paused
EndFunc

