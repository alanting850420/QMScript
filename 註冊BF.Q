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
MacroID=7a94626d-08ab-48af-be5a-e1e83114fc38
Description=µù¥UBF
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
RunApp "C:\Users\Administrator\Desktop\TurnOff.cmd"
Delay 5000

Rem Start
RunApp "C:\Users\Administrator\Desktop\TurnON.cmd"
Lp = 0
Cmd = Plugin.Window.Find("ConsoleWindowClass", 0)
While Cmd <= 0
	Lp = Lp + 1
	If (Lp = 11) Then 
	 	RunApp "C:\Users\Administrator\Desktop\TurnOff.cmd"
	 	Delay 5000
		Goto Start
	End If
	Delay 100
	Cmd = Plugin.Window.Find("ConsoleWindowClass", 0)
Wend

Lp = 0
While Cmd > 0
	Lp = Lp + 1
	If (Lp = 11) Then 
	 	RunApp "C:\Users\Administrator\Desktop\TurnOff.cmd"
	 	Delay 5000
		Goto Start
	End If
	Delay 100
	Cmd = Plugin.Window.Find("ConsoleWindowClass", 0)
Wend

For i = 1 To 10
	//RunApp "\\vmware-host\Shared Folders\POP\BeanfunRegister\dist\BeanfunRegister.jar"
	//RunApp "C:\Users\Administrator\Desktop\BeanfunRegister\dist\Open.bat"
	MoveTo 975, 556
	Delay 500
	LeftClick 1
	Delay 500
	KeyPress "Enter", 1
	Delay 500
	Jar = Plugin.Window.Find("SunAwtFrame", "")
	While Jar <= 0
		Delay 1000
		Jar = Plugin.Window.Find("SunAwtFrame", "")
	Wend
	Delay 500
	Cmd = Plugin.Window.Find("ConsoleWindowClass", "C:\ProgramData\Oracle\Java\javapath\java.exe")
	Call Plugin.Window.Min(Cmd)
	Call Plugin.Window.Move(Jar, ((i - 1) Mod 5) * 158, ((i - 1)\ 5) * 206)
	Call Plugin.Window.SetText(Jar, "Beanfun_" & i)
	SayString "qwe"
	Delay 200
	KeyPress "Tab", 1
	Delay 200
	SayString "kirinmail.com"
	Delay 200
	KeyPress "Tab", 1
	Delay 200
	SayString "aaa70155"
	Delay 200
	KeyPress "Tab", 1
	Delay 200
	SayString "1000"
	Delay 200
	KeyPress "Tab", 1
	Delay 200
	KeyPress "Space", 1
	Delay 200
Next
Delay 15000

RunApp "C:\Users\Administrator\Desktop\TurnOff.cmd"
Delay 5000
Goto Start