Const $BLUESTACKS_WINDOW_TITLE = "BlueStacks App Player"

Func SetWindowPositionAndSize($windowTitle, $x, $y, $width, $height)
   WinMove($windowTitle, "", $x, $y, $width, $height)
   Sleep(1000)
EndFunc

Func ActivateClashOfClans()
   WinActivate($BLUESTACKS_WINDOW_TITLE)
EndFunc
