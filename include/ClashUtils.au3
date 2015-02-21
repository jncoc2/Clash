Func SetWindowPositionAndSize($windowTitle, $x, $y, $width, $height)
   WinMove($windowTitle, "", $x, $y, $width, $height)
   Sleep(1000)
EndFunc
