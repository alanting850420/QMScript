[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=26761693-0fd2-4f1d-8635-ed6b4bc35ad6
Description=®ÉªÅ±´ÀI
Enable=1
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
A = CInt(Inputbox("Num"))
B = CInt(Inputbox("Loop"))
C = WaitClick()
Delay 500
Pop = Plugin.Window.Foreground()
For B
	Select Case A
		Case 1
			Call Plugin.Bkgnd.LeftClick(Pop, 128, 530)
		Case 2
			Call Plugin.Bkgnd.LeftClick(Pop, 273, 530)
		Case 3
			Call Plugin.Bkgnd.LeftClick(Pop, 418, 530)
		Case 4
			Call Plugin.Bkgnd.LeftClick(Pop, 563, 530)
		Case 5
			Call Plugin.Bkgnd.LeftClick(Pop, 708, 530)
	End Select
	Delay 150
	Call Plugin.Bkgnd.LeftClick(Pop, 370, 419)
	Delay 150
	For 7
		Call Plugin.Bkgnd.KeyPress(Pop, 13)
		Delay 20
	Next
	For 3
		Call Plugin.Bkgnd.KeyPress(Pop, 27)
	Next
Next