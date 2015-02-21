Const $BLUESTACKS_WINDOW_TITLE = "BlueStacks App Player"

Func SetWindowPositionAndSize($windowTitle, $x, $y, $width, $height)
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
   ActivateClashOfClans()
   SetWindowPositionAndSize($BLUESTACKS_WINDOW_TITLE, 0, 0, 908, 599)
   MouseClickDrag("left", 10, 60, 10, 70, 1)
   Sleep(500)
   MouseClickDrag("left", 10, 70, 10, 60, 1)
   Sleep(500)
EndFunc

Func IsGameDisconnected()
   ActivateClashOfClans()
   $checkColor = PixelGetColor(470, 50)
   If $checkColor = 15660280 Then
	  Return True
   Else
	  Return False
   EndIf
EndFunc
