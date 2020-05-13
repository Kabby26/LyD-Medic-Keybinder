;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
;Medic-Binder
Version := 0.3
;- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

IfExist update.bat
{
	FileDelete update.bat
}

UrlDownloadToFile http://185.248.140.248/SAMD_Keybinder/Version.txt, version.txt

FileRead, NewestVersion, version.txt
FileDelete version.txt

if NewestVersion is not number
{
	MsgBox, 48, Fehler, Die Updateserver sind derzeit nicht erreichbar!`nBitte bei Kabby melden. Der Keybinder kann trotzdessen weiter verwendet werden.
	SERVERDOWN := 1
}

if(SERVERDOWN == 1){
}else if(NewestVersion > version){
	MsgBox, 68, Update verfügbar, Es ist ein Update verfügbar!`n`nAktuelle Version:     [%Version%]`nNeue Version:          [%NewestVersion%]`n`nMöchtest du den Keybinder aktualisieren?
	IfMsgBox, YES
	{
		SplashTextOn, 200, 50, Keybinder, Der Keybinder wird geupdated! Bitte warten...
		UrlDownloadToFile http://185.248.140.248/SAMD_Keybinder/Keybinder.exe, %A_ScriptName%.new
		UpdateBat=
			(
				Del "%A_ScriptName%"
				Rename "%A_ScriptName%.new" "%A_ScriptName%
				cd "%A_ScriptFullPath%"
				"%A_ScriptName%"
			)
		FileAppend, %UpdateBat%, update.bat
		Run, update.bat, , hide
		SplashTextOff
		ExitApp
		}
	IfMsgBox, NO
	{
	}
}else{
}

ifNotExist, %a_MyDocuments%\KabbyBinder\
{
	FileCreateDir, %a_MyDocuments%\KabbyBinder\
}

ifNotExist, %a_MyDocuments%\KabbyBinder\settings.ini
{
	URLDownloadToFile, http://185.248.140.248/SAMD_Keybinder/HOTKEYsettings.ini, %a_MyDocuments%\KabbyBinder\settings.ini
}

ifNotExist, %A_AppData%\Keybinder\SAMD_Keybinder\
{
	FileCreateDir, %A_AppData%\Keybinder\SAMD_Keybinder\
}

ifNotExist, %A_AppData%\Keybinder\SAMD_Keybinder\config\
{
	FileCreateDir, %A_AppData%\Keybinder\SAMD_Keybinder\config\
}

ifNotExist, %A_AppData%\Keybinder\Open-SAMP-API.dll
{
	URLDownloadToFile, http://185.248.140.248/LyD_Keybinder/Open-SAMP-API.dll, %A_AppData%\Keybinder\Open-SAMP-API.dll
}

ifNotExist, %A_AppData%\Keybinder\API.ahk
{
	URLDownloadToFile, http://185.248.140.248/API/API.ahk, %A_AppData%\Keybinder\API.ahk
}

ifNotExist, %A_AppData%\Keybinder\SAMD_Keybinder\grau.jpg
{
	URLDownloadToFile, http://185.248.140.248/SAMD_Keybinder/grau.jpg, %A_AppData%\Keybinder\SAMD_Keybinder\grau.jpg
}

ifNotExist, %A_AppData%\Keybinder\SAMD_Keybinder\medic1.png
{
	URLDownloadToFile, http://185.248.140.248/SAMD_Keybinder/medic1.png, %A_AppData%\Keybinder\SAMD_Keybinder\medic1.png
}

ifNotExist, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini
{
	URLDownloadToFile, http://185.248.140.248/SAMD_Keybinder/settings.ini, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini
}

#IfWinActive, ahk_exe gta_sa.exe
#SingleInstance, Force
#MaxHotkeysPerInterval  1000000
#UseHook
#NoEnv

RegRead sampuser, HKEY_CURRENT_USER, Software\SAMP, PlayerName

#include, %A_AppData%\Keybinder\API.ahk
;#Include, C:\Users\Pascal\GitHub\Medic-Binder\API.ahk

;global inidir := %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini
;global inidir = "C:\Users\Pascal\GitHub\Medic-Binder\settings.ini"
global newNotrufID := ""
global fireNumber := ""
global exNotrufID := ""


Iniread, Key1, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key1
Iniread, Key2, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key2
Iniread, Key3, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key3
Iniread, Key4, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key4
Iniread, Key5, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key5
Iniread, Key6, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key6
Iniread, Key7, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key7
Iniread, Key8, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key8
Iniread, Key9, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key9
Iniread, Key10, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key10
Iniread, Key11, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key11
Iniread, Key12, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key12
Iniread, Key13, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key13
Iniread, Key14, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key14
Iniread, Key15, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key15
Iniread, Key16, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key16
Iniread, Key17, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key17
Iniread, Key18, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key18
Iniread, Key19, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key19
Iniread, Key20, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key20
Iniread, Key21, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key21
Iniread, Key22, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key22
Iniread, Key23, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key23
Iniread, Key24, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key24
Iniread, Key25, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key25
Iniread, Key26, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key26
Iniread, Key27, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key27
Iniread, Key28, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key28
Iniread, Key29, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key29
Iniread, Key30, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key30
Iniread, Key31, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key31
Iniread, Key32, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key32
Iniread, Key33, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key33
Iniread, Key34, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key34
Iniread, Key35, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key35
Iniread, Key36, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key36
Iniread, Key37, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key37
Iniread, Key38, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key38
Iniread, Key39, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key39
Iniread, Key40, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key40
Iniread, Key41, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key41
Iniread, Key42, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key42
Iniread, Key43, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key43
Iniread, Key44, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key44
Iniread, Key45, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key45
Iniread, Key46, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key46
Iniread, Key47, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key47
Iniread, Key48, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key48
Iniread, Key49, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key49
Iniread, Key50, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key50
Iniread, Key51, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key51
Iniread, Key52, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key52
Iniread, Key53, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key53
Iniread, Key54, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key54
Iniread, Key55, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key55
Iniread, Key56, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key56
Iniread, Key57, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key57
Iniread, Key58, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key58
Iniread, Key59, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key59
Iniread, Key60, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key60
Iniread, Key61, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key61
Iniread, Key62, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key62
Iniread, Key63, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key63
Iniread, Key64, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key64
Iniread, Key65, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key65
Iniread, Key66, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key66
Iniread, Key67, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key67
Iniread, Key68, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key68
Iniread, Key69, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key69
Iniread, Key70, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key70
Iniread, Key71, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key71
Iniread, Key72, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key72
Iniread, Key73, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key73
Iniread, Key74, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key74
Iniread, Key75, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key75
Iniread, Key76, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key76
Iniread, Key77, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key77
Iniread, Key78, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key78
Iniread, Key79, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key79
Iniread, Key80, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key80
Iniread, Key81, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key81
Iniread, Key82, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key82
Iniread, Key83, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key83
Iniread, Key84, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key84
Iniread, Key85, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key85
Iniread, Key86, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key86
Iniread, Key87, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key87
Iniread, Key88, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key88
Iniread, Key89, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key89
Iniread, Key90, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key90
Iniread, Key91, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key91
Iniread, Key92, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key92
Iniread, Key93, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key93
Iniread, Key94, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key94
Iniread, Key95, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key95
Iniread, Key96, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key96
Iniread, Key97, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key97
Iniread, Key98, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key98
Iniread, Key99, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key99
Iniread, Key100, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key100
Iniread, Key101, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key101
Iniread, Key102, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key102
Iniread, Key103, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key103
Iniread, Key104, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key104
Iniread, Key105, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key105
Iniread, Key106, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key106
Iniread, Key107, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key107
Iniread, Key108, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key108
Iniread, Key109, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key109
Iniread, Key110, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key110
Iniread, Key111, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key111
Iniread, Key112, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key112
Iniread, Key113, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key113
Iniread, Key114, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key114
Iniread, Key115, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key115
Iniread, Key116, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key116
Iniread, Key117, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key117
Iniread, Key118, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key118
Iniread, Key119, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key119
Iniread, Key120, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key120
Iniread, Key121, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key121
Iniread, Key122, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key122
Iniread, Key123, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key123
Iniread, Key124, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key124
Iniread, Key125, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key125
Iniread, Key126, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key126
Iniread, Key127, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key127
Iniread, Key128, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key128
Iniread, Key129, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key129
Iniread, Key130, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key130

Iniread, KeyText1, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText1
Iniread, KeyText2, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText2
Iniread, KeyText3, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText3
Iniread, KeyText4, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText4
Iniread, KeyText5, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText5
Iniread, KeyText6, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText6
Iniread, KeyText7, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText7
Iniread, KeyText8, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText8
Iniread, KeyText9, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText9
Iniread, KeyText10, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText10
Iniread, KeyText11, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText11
Iniread, KeyText12, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText12
Iniread, KeyText13, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText13
Iniread, KeyText14, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText14
Iniread, KeyText15, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText15
Iniread, KeyText16, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText16
Iniread, KeyText17, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText17
Iniread, KeyText18, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText18
Iniread, KeyText19, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText19
Iniread, KeyText20, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText20
Iniread, KeyText21, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText21
Iniread, KeyText22, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText22
Iniread, KeyText23, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText23
Iniread, KeyText24, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText24
Iniread, KeyText25, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText25
Iniread, KeyText26, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText26
Iniread, KeyText27, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText27
Iniread, KeyText28, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText28
Iniread, KeyText29, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText29
Iniread, KeyText30, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText30
Iniread, KeyText31, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText31
Iniread, KeyText32, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText32
Iniread, KeyText33, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText33
Iniread, KeyText34, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText34
Iniread, KeyText35, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText35
Iniread, KeyText36, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText36
Iniread, KeyText37, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText37
Iniread, KeyText38, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText38
Iniread, KeyText39, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText39
Iniread, KeyText40, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText40
Iniread, KeyText41, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText41
Iniread, KeyText42, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText42
Iniread, KeyText43, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText43
Iniread, KeyText44, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText44
Iniread, KeyText45, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText45
Iniread, KeyText46, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText46
Iniread, KeyText47, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText47
Iniread, KeyText48, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText48
Iniread, KeyText49, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText49
Iniread, KeyText50, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText50
Iniread, KeyText51, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText51
Iniread, KeyText52, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText52
Iniread, KeyText53, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText53
Iniread, KeyText54, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText54
Iniread, KeyText55, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText55
Iniread, KeyText56, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText56
Iniread, KeyText57, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText57
Iniread, KeyText58, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText58
Iniread, KeyText59, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText59
Iniread, KeyText60, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText60
Iniread, KeyText61, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText61
Iniread, KeyText62, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText62
Iniread, KeyText63, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText63
Iniread, KeyText64, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText64
Iniread, KeyText65, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText65
Iniread, KeyText66, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText66
Iniread, KeyText67, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText67
Iniread, KeyText68, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText68
Iniread, KeyText69, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText69
Iniread, KeyText70, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText70
Iniread, KeyText71, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText71
Iniread, KeyText72, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText72
Iniread, KeyText73, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText73
Iniread, KeyText74, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText74
Iniread, KeyText75, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText75
Iniread, KeyText76, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText76
Iniread, KeyText77, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText77
Iniread, KeyText78, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText78
Iniread, KeyText79, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText79
Iniread, KeyText80, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText80
Iniread, KeyText81, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText81
Iniread, KeyText82, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText82
Iniread, KeyText83, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText83
Iniread, KeyText84, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText84
Iniread, KeyText85, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText85
Iniread, KeyText86, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText86
Iniread, KeyText87, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText87
Iniread, KeyText88, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText88
Iniread, KeyText89, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText89
Iniread, KeyText90, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText90
Iniread, KeyText91, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText91
Iniread, KeyText92, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText92
Iniread, KeyText93, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText93
Iniread, KeyText94, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText94
Iniread, KeyText95, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText95
Iniread, KeyText96, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText96
Iniread, KeyText97, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText97
Iniread, KeyText98, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText98
Iniread, KeyText99, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText99
Iniread, KeyText100, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText100
Iniread, KeyText101, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText101
Iniread, KeyText102, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText102
Iniread, KeyText103, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText103
Iniread, KeyText104, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText104
Iniread, KeyText105, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText105
Iniread, KeyText106, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText106
Iniread, KeyText107, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText107
Iniread, KeyText108, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText108
Iniread, KeyText109, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText109
Iniread, KeyText110, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText110
Iniread, KeyText111, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText111
Iniread, KeyText112, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText112
Iniread, KeyText113, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText113
Iniread, KeyText114, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText114
Iniread, KeyText115, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText115
Iniread, KeyText116, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText116
Iniread, KeyText117, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText117
Iniread, KeyText118, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText118
Iniread, KeyText119, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText119
Iniread, KeyText120, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText120
Iniread, KeyText121, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText121
Iniread, KeyText122, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText122
Iniread, KeyText123, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText123
Iniread, KeyText124, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText124
Iniread, KeyText125, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText125
Iniread, KeyText126, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText126
Iniread, KeyText127, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText127
Iniread, KeyText128, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText128
Iniread, KeyText129, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText129
Iniread, KeyText130, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText130
Iniread, KeyText131, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText131
Iniread, KeyText132, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText132
Iniread, KeyText133, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText133
Iniread, KeyText134, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText134
Iniread, KeyText135, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText135
Iniread, KeyText136, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText136
Iniread, KeyText137, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText137
Iniread, KeyText138, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText138
Iniread, KeyText139, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText139
Iniread, KeyText140, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText140
Iniread, KeyText141, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText141
Iniread, KeyText142, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText142
Iniread, KeyText143, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText143
Iniread, KeyText144, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText144
Iniread, KeyText145, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText145
Iniread, KeyText146, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText146
Iniread, KeyText147, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText147
Iniread, KeyText148, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText148
Iniread, KeyText149, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText149
Iniread, KeyText150, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText150

IniRead, acceptEmCall, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptEmCall
IniRead, acceptLastEmCall, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptLastEmCall
IniRead, acceptFire, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptFire
IniRead, acceptLastFire, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptLastFire
IniRead, revivePlayer, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, revivePlayer
IniRead, reviveEmCall, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, reviveEmCall
IniRead, denyRevive, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, denyRevive
IniRead, healPlayer, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, healPlayer
IniRead, warning, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, warning
IniRead, samdGate, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, samdGate
IniRead, blauLicht, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, blauLicht

Hotkey, ~%Key1%, Hotkey1
Hotkey, ~%Key2%, Hotkey2
Hotkey, ~%Key3%, Hotkey3
Hotkey, ~%Key4%, Hotkey4
Hotkey, ~%Key5%, Hotkey5
Hotkey, ~%Key6%, Hotkey6
Hotkey, ~%Key7%, Hotkey7
Hotkey, ~%Key8%, Hotkey8
Hotkey, ~%Key9%, Hotkey9
Hotkey, ~%Key10%, Hotkey10
Hotkey, ~%Key11%, Hotkey11
Hotkey, ~%Key12%, Hotkey12
Hotkey, ~%Key13%, Hotkey13
Hotkey, ~%Key14%, Hotkey14
Hotkey, ~%Key15%, Hotkey15
Hotkey, ~%Key16%, Hotkey16
Hotkey, ~%Key17%, Hotkey17
Hotkey, ~%Key18%, Hotkey18
Hotkey, ~%Key19%, Hotkey19
Hotkey, ~%Key20%, Hotkey20
Hotkey, ~%Key21%, Hotkey21
Hotkey, ~%Key22%, Hotkey22
Hotkey, ~%Key23%, Hotkey23
Hotkey, ~%Key24%, Hotkey24
Hotkey, ~%Key25%, Hotkey25
Hotkey, ~%Key26%, Hotkey26
Hotkey, ~%Key27%, Hotkey27
Hotkey, ~%Key28%, Hotkey28
Hotkey, ~%Key29%, Hotkey29
Hotkey, ~%Key30%, Hotkey30
Hotkey, ~%Key31%, Hotkey31
Hotkey, ~%Key32%, Hotkey32
Hotkey, ~%Key33%, Hotkey33
Hotkey, ~%Key34%, Hotkey34
Hotkey, ~%Key35%, Hotkey35
Hotkey, ~%Key36%, Hotkey36
Hotkey, ~%Key37%, Hotkey37
Hotkey, ~%Key38%, Hotkey38
Hotkey, ~%Key39%, Hotkey39
Hotkey, ~%Key40%, Hotkey40
Hotkey, ~%Key41%, Hotkey41
Hotkey, ~%Key42%, Hotkey42
Hotkey, ~%Key43%, Hotkey43
Hotkey, ~%Key44%, Hotkey44
Hotkey, ~%Key45%, Hotkey45
Hotkey, ~%Key46%, Hotkey46
Hotkey, ~%Key47%, Hotkey47
Hotkey, ~%Key48%, Hotkey48
Hotkey, ~%Key49%, Hotkey49
Hotkey, ~%Key50%, Hotkey50
Hotkey, ~%Key51%, Hotkey51
Hotkey, ~%Key52%, Hotkey52
Hotkey, ~%Key53%, Hotkey53
Hotkey, ~%Key54%, Hotkey54
Hotkey, ~%Key55%, Hotkey55
Hotkey, ~%Key56%, Hotkey56
Hotkey, ~%Key57%, Hotkey57
Hotkey, ~%Key58%, Hotkey58
Hotkey, ~%Key59%, Hotkey59
Hotkey, ~%Key60%, Hotkey60
Hotkey, ~%Key61%, Hotkey61
Hotkey, ~%Key62%, Hotkey62
Hotkey, ~%Key63%, Hotkey63
Hotkey, ~%Key64%, Hotkey64
Hotkey, ~%Key65%, Hotkey65
Hotkey, ~%Key66%, Hotkey66
Hotkey, ~%Key67%, Hotkey67
Hotkey, ~%Key68%, Hotkey68
Hotkey, ~%Key69%, Hotkey69
Hotkey, ~%Key70%, Hotkey70
Hotkey, ~%Key71%, Hotkey71
Hotkey, ~%Key72%, Hotkey72
Hotkey, ~%Key73%, Hotkey73
Hotkey, ~%Key74%, Hotkey74
Hotkey, ~%Key75%, Hotkey75
Hotkey, ~%Key76%, Hotkey76
Hotkey, ~%Key77%, Hotkey77
Hotkey, ~%Key78%, Hotkey78
Hotkey, ~%Key79%, Hotkey79
Hotkey, ~%Key80%, Hotkey80
Hotkey, ~%Key81%, Hotkey81
Hotkey, ~%Key82%, Hotkey82
Hotkey, ~%Key83%, Hotkey83
Hotkey, ~%Key84%, Hotkey84
Hotkey, ~%Key85%, Hotkey85
Hotkey, ~%Key86%, Hotkey86
Hotkey, ~%Key87%, Hotkey87
Hotkey, ~%Key88%, Hotkey88
Hotkey, ~%Key89%, Hotkey89
Hotkey, ~%Key90%, Hotkey90
Hotkey, ~%Key91%, Hotkey91
Hotkey, ~%Key92%, Hotkey92
Hotkey, ~%Key93%, Hotkey93
Hotkey, ~%Key94%, Hotkey94
Hotkey, ~%Key95%, Hotkey95
Hotkey, ~%Key96%, Hotkey96
Hotkey, ~%Key97%, Hotkey97
Hotkey, ~%Key98%, Hotkey98
Hotkey, ~%Key99%, Hotkey99
Hotkey, ~%Key100%, Hotkey100
Hotkey, ~%Key101%, Hotkey101
Hotkey, ~%Key102%, Hotkey102
Hotkey, ~%Key103%, Hotkey103
Hotkey, ~%Key104%, Hotkey104
Hotkey, ~%Key105%, Hotkey105
Hotkey, ~%Key106%, Hotkey106
Hotkey, ~%Key107%, Hotkey107
Hotkey, ~%Key108%, Hotkey108
Hotkey, ~%Key109%, Hotkey109
Hotkey, ~%Key110%, Hotkey110
Hotkey, ~%Key111%, Hotkey111
Hotkey, ~%Key112%, Hotkey112
Hotkey, ~%Key113%, Hotkey113
Hotkey, ~%Key114%, Hotkey114
Hotkey, ~%Key115%, Hotkey115
Hotkey, ~%Key116%, Hotkey116
Hotkey, ~%Key117%, Hotkey117
Hotkey, ~%Key118%, Hotkey118
Hotkey, ~%Key119%, Hotkey119

Hotkey, ~%acceptEmCall%, acceptEmCall
Hotkey, ~%acceptLastEmCall%, acceptLastEmCall
Hotkey, ~%acceptFire%, acceptFire
Hotkey, ~%acceptLastFire%, acceptLastFire
Hotkey, ~%revivePlayer%, revivePlayer
Hotkey, ~%reviveEmCall%, reviveEmCall
Hotkey, ~%denyRevive%, denyRevive
Hotkey, ~%healPlayer%, healPlayer
Hotkey, ~%warning%, warning
Hotkey, ~%samdGate%, samdGate
Hotkey, ~%blauLicht%, blauLicht


SetTimer, readCalls, On
SetTimer, aEngine, On

KMSG("Der Keybinder für das SAMD wurde erfolgreich gestartet!")
KMSG("Um den vollen Funktionsumfang nutzen zu können, musst du für eine Sekunde das Scoreboard offen halten!")

Gosub, main

return

main:
Gui, Destroy
Gui, Add, Picture, x303 y-1 w400 h160 +Center, %A_AppData%\Keybinder\SAMD_Keybinder\medic1.png
Gui, Add, Picture, x-8 y689 w1090 h70 , %A_AppData%\Keybinder\SAMD_Keybinder\grau.jpg
Gui, Add, GroupBox, x532 y149 w510 h140 , Wiederbeleben + Heilen
Gui, Add, GroupBox, x2 y299 w510 h140 , Sonstiges
Gui, Add, GroupBox, x2 y149 w510 h140 , Notrufe
Gui, Add, Hotkey, x12 y169 w130 h20 vacceptEmCall, %acceptEmCall%
Gui, Add, Text, x152 y169 w350 h20 , Notruf annehmen
Gui, Add, Hotkey, x12 y199 w130 h20 vacceptLastEmCall, %acceptLastEmCall%
Gui, Add, Text, x152 y199 w350 h20 , Letzten Notruf annehmen
Gui, Add, Hotkey, x12 y229 w130 h20 vacceptFire, %acceptFire%
Gui, Add, Text, x152 y229 w350 h20 , Brand annehmen
Gui, Add, Hotkey, x12 y259 w130 h20 vacceptLastFire, %acceptLastFire%
Gui, Add, Text, x152 y259 w350 h20 , Letzten Brand annehmen
Gui, Add, Hotkey, x542 y169 w130 h20 vrevivePlayer, %revivePlayer%
Gui, Add, Text, x682 y169 w350 h20 , Spieler wiederbeleben
Gui, Add, Hotkey, x542 y199 w130 h20 vreviveEmCall, %reviveEmCall%
Gui, Add, Text, x682 y199 w350 h20 , Notruf wiederbeleben
Gui, Add, Hotkey, x542 y229 w130 h20 vdenyRevive, %denyRevive%
Gui, Add, Text, x682 y229 w350 h20 , Wiederbelebung verweigern
Gui, Add, Hotkey, x542 y259 w130 h20 vhealPlayer, %healPlayer%
Gui, Add, Text, x682 y259 w350 h20 , Spieler heilen
Gui, Add, Hotkey, x12 y319 w130 h20 vwarning, %warning%
Gui, Add, Text, x152 y319 w350 h20 , Achtung! SAMD!
Gui, Add, Hotkey, x12 y349 w130 h20 vsamdGate, %samdGate%
Gui, Add, Text, x152 y349 w350 h20 , SAMD Garage
Gui, Add, Hotkey, x12 y379 w130 h20 vblauLicht,%blauLicht%
Gui, Add, Text, x152 y379 w350 h20 , Blaulicht
Gui, Add, Button, x912 y699 w140 h40 gsave, Speichern
Gui, Add, Button, x752 y699 w140 h40 gsettings, Einstellungen
Gui, Add, Button, x592 y699 w140 h40 ghotkeys, Eigene Hotkeys
Gui, Add, Button, x432 y699 w140 h40 gstats, Stats
Gui, Show, w1066 h754, LyD Keybinder | San Andreas Medical Department | Version: %version%
return

GuiClose:
ExitApp

save:
GuiControlGet, acceptEmCall
GuiControlGet, acceptLastEmCall
GuiControlGet, acceptFire
GuiControlGet, acceptLastFire
GuiControlGet, revivePlayer
GuiControlGet, reviveEmCall
GuiControlGet, denyRevive
GuiControlGet, healPlayer
GuiControlGet, warning
GuiControlGet, samdGate
GuiControlGet, blauLicht
IniWrite, %acceptEmCall%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptEmCall
IniWrite, %acceptLastEmCall%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptLastEmCall
IniWrite, %acceptFire%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptFire
IniWrite, %acceptLastFire%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, acceptLastFire
IniWrite, %revivePlayer%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, revivePlayer
IniWrite, %reviveEmCall%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, reviveEmCall
IniWrite, %denyRevive%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, denyRevive
IniWrite, %healPlayer%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, healPlayer
IniWrite, %warning%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, warning
IniWrite, %samdGate%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, samdGate
IniWrite, %blauLicht%, %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini, Hotkeys, blauLicht
MsgBox, 64, SAMD-Keybinder, Deine Hoteys wurden unter %A_AppData%\Keybinder\SAMD_Keybinder\settings.ini gespeichert!, 2
return

settings:
MsgBox, 64, SAMD-Keybinder, Bereich noch in arbeit...
return

hotkeys:
Gui, Destroy
Gui, Add, Text, x12 y9, Über 100 Hotkeys, die du dir selbst belegen kannst
Gui, Add, Text, x542 y509 gAbord, Zurück
Gui, Add, Text, x602 y509 gVariablen, Variablen
Gui, Add, Text, x662 y509 gSecSave, Speichern
Gui, Add, Tab2, x12 y25 w770 h470 , Keys 1|Keys 2|Keys 3|Keys 4|Keys 5|Keys 6|Keys 7|Keys 8|Keys 9|Keys 10|Keys 11|Keys 12|Keys 13|Keys 14|Keys 15
Gui, Tab, Keys 1
Gui, Add, Text, x22 y69 w100 h30 , ^ + 0
Gui, Add, Text, x22 y109 w100 h30 , ^ + 1
Gui, Add, Text, x22 y149 w100 h30 , ^ + 2
Gui, Add, Text, x22 y189 w100 h30 , ^ + 3
Gui, Add, Text, x22 y229 w100 h30 , ^ + 4
Gui, Add, Text, x22 y269 w100 h30 , ^ + 5
Gui, Add, Text, x22 y309 w100 h30 , ^ + 6
Gui, Add, Text, x22 y349 w100 h30 , ^ + 7
Gui, Add, Text, x22 y389 w100 h30 , ^ + 8
Gui, Add, Text, x22 y429 w100 h30 , ^ + 9
Gui, Add, Edit, x132 y69 w610 h30 vKeyText1, %KeyText1%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText2, %KeyText2%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText3, %KeyText3%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText4, %KeyText4%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText5, %KeyText5%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText6, %KeyText6%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText7, %KeyText7%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText8, %KeyText8%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText9, %KeyText9%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText10, %KeyText10%

Gui, Tab, Keys 2
Gui, Add, Text, x22 y69 w100 h30 , STRG + 0
Gui, Add, Text, x22 y109 w100 h30 , STRG + 1
Gui, Add, Text, x22 y149 w100 h30 , STRG + 2
Gui, Add, Text, x22 y189 w100 h30 , STRG + 3
Gui, Add, Text, x22 y229 w100 h30 , STRG + 4
Gui, Add, Text, x22 y269 w100 h30 , STRG + 5
Gui, Add, Text, x22 y309 w100 h30 , STRG + 6
Gui, Add, Text, x22 y349 w100 h30 , STRG + 7
Gui, Add, Text, x22 y389 w100 h30 , STRG + 8
Gui, Add, Text, x22 y429 w100 h30 , STRG + 9
Gui, Add, Edit, x132 y69 w610 h30 vKeyText11, %KeyText11%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText12, %KeyText12%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText13, %KeyText13%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText14, %KeyText14%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText15, %KeyText15%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText16, %KeyText16%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText17, %KeyText17%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText18, %KeyText18%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText19, %KeyText19%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText20, %KeyText20%

Gui, Tab, Keys 3
Gui, Add, Text, x22 y69 w100 h30 , F13
Gui, Add, Text, x22 y109 w100 h30 , F14
Gui, Add, Text, x22 y149 w100 h30 , F15
Gui, Add, Text, x22 y189 w100 h30 , F16
Gui, Add, Text, x22 y229 w100 h30 , F17
Gui, Add, Text, x22 y269 w100 h30 , F18
Gui, Add, Text, x22 y309 w100 h30 , F19
Gui, Add, Text, x22 y349 w100 h30 , F20
Gui, Add, Text, x22 y389 w100 h30 , F21
Gui, Add, Text, x22 y429 w100 h30 , F22
Gui, Add, Edit, x132 y69 w610 h30 vKeyText21, %KeyText21%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText22, %KeyText22%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText23, %KeyText23%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText24, %KeyText24%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText25, %KeyText25%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText26, %KeyText26%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText27, %KeyText27%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText28, %KeyText28%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText29, %KeyText29%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText30, %KeyText30%

Gui, Tab, Keys 4
Gui, Add, Hotkey, x22 y69 w100 h30 vKey1, %Key1%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey2, %Key2%
Gui, Add, Hotkey, x22 y149 w100 h30 vKey3, %Key3%
Gui, Add, Hotkey, x22 y189 w100 h30 vKey4, %Key4%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey5, %Key5%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey6, %Key6%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey7, %Key7%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey8, %Key8%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey9, %Key9%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey10, %Key10%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText31, %KeyText31%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText32, %KeyText32%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText33, %KeyText33%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText34, %KeyText34%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText35, %KeyText35%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText36, %KeyText36%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText37, %KeyText37%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText38, %KeyText38%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText39, %KeyText39%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText40, %KeyText40%

Gui, Tab, Keys 5
Gui, Add, Hotkey, x22 y69 w100 h30 vKey11, %Key11%
Gui, Add, Hotkey, x22 y109 w100 h30  vKey12, %Key12%
Gui, Add, Hotkey, x22 y149 w100 h30  vKey13, %Key13%
Gui, Add, Hotkey, x22 y189 w100 h30  vKey14, %Key14%
Gui, Add, Hotkey, x22 y229 w100 h30  vKey15, %Key15%
Gui, Add, Hotkey, x22 y269 w100 h30  vKey16, %Key16%
Gui, Add, Hotkey, x22 y309 w100 h30  vKey17, %Key17%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey18 %Key18%
Gui, Add, Hotkey, x22 y389 w100 h30  vKey19, %Key19% 
Gui, Add, Hotkey, x22 y429 w100 h30  vKey20, %Key20%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText41, %KeyText41%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText42, %KeyText42%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText43, %KeyText43%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText44, %KeyText44%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText45, %KeyText45%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText46, %KeyText46%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText47, %KeyText47%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText48, %KeyText48%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText49, %KeyText49%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText50, %KeyText50%

Gui, Tab, Keys 6
Gui, Add, Hotkey, x22 y69 w100 h30 vKey21, %Key21%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey22, %Key22% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey23, %Key23%
Gui, Add, Hotkey, x22 y189 w100 h30 vKey24, %Key24%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey25, %Key25%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey26, %Key26%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey27, %Key27%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey28, %Key28%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey29, %Key29%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey30, %Key30%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText51, %KeyText51%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText52, %KeyText52%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText53, %KeyText53%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText54, %KeyText54%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText55, %KeyText55%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText56, %KeyText56%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText57, %KeyText57%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText58, %KeyText58%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText59, %KeyText59%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText60, %KeyText60%

Gui, Tab, Keys 7
Gui, Add, Hotkey, x22 y69 w100 h30 vKey31, %Key31% 
Gui, Add, Hotkey, x22 y109 w100 h30vKey32, %Key32% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey33, %Key33% 
Gui, Add, Hotkey, x22 y189 w100 h30 vKey34, %Key34%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey35, %Key35%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey36, %Key36%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey37, %Key37%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey38, %Key38% 
Gui, Add, Hotkey, x22 y389 w100 h30 vKey39, %Key39%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey40, %Key40%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText61, %KeyText61%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText62, %KeyText62%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText63, %KeyText63%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText64, %KeyText64%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText65, %KeyText65%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText66, %KeyText66%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText67, %KeyText67%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText68, %KeyText68%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText69, %KeyText69%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText70, %KeyText70%

Gui, Tab, Keys 8
Gui, Add, Hotkey, x22 y69 w100 h30 vKey41, %Key41% 
Gui, Add, Hotkey, x22 y109 w100 h30 vKey42, %Key42%
Gui, Add, Hotkey, x22 y149 w100 h30 vKey43, %Key43% 
Gui, Add, Hotkey, x22 y189 w100 h30 vKey44, %Key44%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey45, %Key45% 
Gui, Add, Hotkey, x22 y269 w100 h30 vKey46, %Key46%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey47, %Key47%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey48, %Key48%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey49, %Key49%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey50, %Key50%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText71, %KeyText71%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText72, %KeyText72%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText73, %KeyText73%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText74, %KeyText74%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText75, %KeyText75%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText76, %KeyText76%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText77, %KeyText77%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText78, %KeyText78%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText79, %KeyText79%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText80, %KeyText80%

Gui, Tab, Keys 9
Gui, Add, Hotkey, x22 y69 w100 h30 vKey51, %Key51%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey52, %Key52%
Gui, Add, Hotkey, x22 y149 w100 h30 vKey53, %Key53%
Gui, Add, Hotkey, x22 y189 w100 h30 vKey54, %Key54%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey55, %Key55%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey56, %Key56%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey57, %Key57%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey58, %Key58%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey59, %Key59%
Gui, Add, Hotkey, x22 y429 w100 h30  vKey60, %Key60%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText81, %KeyText81%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText82, %KeyText82%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText83, %KeyText83%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText84, %KeyText84%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText85, %KeyText85%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText86, %KeyText86%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText87, %KeyText87%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText88, %KeyText88%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText89, %KeyText89%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText90, %KeyText90%

Gui, Tab, Keys 10
Gui, Add, Hotkey, x22 y69 w100 h30 vKey61, %Key61% 
Gui, Add, Hotkey, x22 y109 w100 h30 vKey62, %Key62% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey63, %Key63%
Gui, Add, Hotkey, x22 y189 w100 h30 vKey64, %Key64%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey65, %Key65%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey66, %Key66%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey67, %Key67%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey68, %Key68%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey69, %Key69%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey70, %Key70%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText91, %KeyText91%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText92, %KeyText92%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText93, %KeyText93%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText94, %KeyText94%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText95, %KeyText95%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText96, %KeyText96%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText97, %KeyText97%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText98, %KeyText98%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText99, %KeyText99%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText100, %KeyText100%

Gui, Tab, Keys 11
Gui, Add, Hotkey, x22 y69 w100 h30 vKey71, %Key71%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey72, %Key72% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey73, %Key73% 
Gui, Add, Hotkey, x22 y189 w100 h30 vKey74, %Key74% 
Gui, Add, Hotkey, x22 y229 w100 h30 vKey75, %Key75%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey76, %Key76% 
Gui, Add, Hotkey, x22 y309 w100 h30 vKey77, %Key77%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey78, %Key78%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey79, %Key79%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey80, %Key80%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText101, %KeyText101%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText102, %KeyText102%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText103, %KeyText103%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText104, %KeyText104%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText105, %KeyText105%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText106, %KeyText106%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText107, %KeyText107%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText108, %KeyText108%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText109, %KeyText109%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText110, %KeyText110%

Gui, Tab, Keys 12
Gui, Add, Hotkey, x22 y69 w100 h30 vKey81, %Key81%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey82, %Key82%
Gui, Add, Hotkey, x22 y149 w100 h30 vKey83, %Key83% 
Gui, Add, Hotkey, x22 y189 w100 h30 vKey84, %Key84% 
Gui, Add, Hotkey, x22 y229 w100 h30 vKey85, %Key85%
Gui, Add, Hotkey, x22 y269 w100 h30 vKey86, %Key86% 
Gui, Add, Hotkey, x22 y309 w100 h30 vKey87, %Key87%
Gui, Add, Hotkey, x22 y349 w100 h30 vKey88, %Key88%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey89, %Key89%
Gui, Add, Hotkey, x22 y429 w100 h30 vKey90, %Key90%
Gui, Add, Edit, x132 y69 w610 h30 vKeyText111, %KeyText111%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText112, %KeyText112%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText113, %KeyText113%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText114, %KeyText114%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText115, %KeyText115%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText116, %KeyText116%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText117, %KeyText117%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText118, %KeyText118%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText119, %KeyText119%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText120, %KeyText120%

Gui, Tab, Keys 13
Gui, Add, Hotkey, x22 y69 w100 h30 vKey91, %Key91%
Gui, Add, Hotkey, x22 y109 w100 h30 vKey92, %Key92% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey93, %Key93%
Gui, Add, Hotkey, x22 y189 w100 h30 vKey94, %Key94%
Gui, Add, Hotkey, x22 y229 w100 h30 vKey95, %Key95% 
Gui, Add, Hotkey, x22 y269 w100 h30 vKey96, %Key96%
Gui, Add, Hotkey, x22 y309 w100 h30 vKey97, %Key97% 
Gui, Add, Hotkey, x22 y349 w100 h30 vKey98, %Key98% 
Gui, Add, Hotkey, x22 y389 w100 h30 vKey99, %Key99% 
Gui, Add, Hotkey, x22 y429 w100 h30 vKey100, %Key100% 
Gui, Add, Edit, x132 y69 w610 h30 vKeyText121, %KeyText121%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText122, %KeyText122%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText123, %KeyText123%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText124, %KeyText124%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText125, %KeyText125%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText126, %KeyText126%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText127, %KeyText127%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText128, %KeyText128%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText129, %KeyText129%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText130, %KeyText130%

Gui, Tab, Keys 14
Gui, Add, Hotkey, x22 y69 w100 h30 vKey101, %Key101% 
Gui, Add, Hotkey, x22 y109 w100 h30 vKey102, %Key102% 
Gui, Add, Hotkey, x22 y149 w100 h30 vKey103, %Key103%  
Gui, Add, Hotkey, x22 y189 w100 h30 vKey104, %Key104%  
Gui, Add, Hotkey, x22 y229 w100 h30 vKey105, %Key105%  
Gui, Add, Hotkey, x22 y269 w100 h30 vKey106, %Key106%  
Gui, Add, Hotkey, x22 y309 w100 h30 vKey107, %Key107%  
Gui, Add, Hotkey, x22 y349 w100 h30 vKey108, %Key108%
Gui, Add, Hotkey, x22 y389 w100 h30 vKey109, %Key109%  
Gui, Add, Hotkey, x22 y429 w100 h30 vKey110, %Key110%  
Gui, Add, Edit, x132 y69 w610 h30 vKeyText131, %KeyText131%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText132, %KeyText132%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText133, %KeyText133%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText134, %KeyText134%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText135, %KeyText135%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText136, %KeyText136%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText137, %KeyText137%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText138, %KeyText138%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText139, %KeyText139%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText140, %KeyText140%

Gui, Tab, Keys 15
Gui, Add, Hotkey, x22 y69 w100 h30 vKey111, %Key111%   
Gui, Add, Hotkey, x22 y109 w100 h30 vKey112, %Key112%  
Gui, Add, Hotkey, x22 y149 w100 h30 vKey113, %Key113%   
Gui, Add, Hotkey, x22 y189 w100 h30 vKey114, %Key114%  
Gui, Add, Hotkey, x22 y229 w100 h30 vKey115, %Key115%  
Gui, Add, Hotkey, x22 y269 w100 h30 vKey116, %Key116%  
Gui, Add, Hotkey, x22 y309 w100 h30 vKey117, %Key117%  
Gui, Add, Hotkey, x22 y349 w100 h30 vKey118, %Key118%  
Gui, Add, Hotkey, x22 y389 w100 h30 vKey119, %Key119%   
Gui, Add, Hotkey, x22 y429 w100 h30 vKey120, %Key120%   
Gui, Add, Edit, x132 y69 w610 h30 vKeyText141, %KeyText141%
Gui, Add, Edit, x132 y109 w610 h30 vKeyText142, %KeyText142%
Gui, Add, Edit, x132 y149 w610 h30 vKeyText143, %KeyText143%
Gui, Add, Edit, x132 y189 w610 h30 vKeyText144, %KeyText144%
Gui, Add, Edit, x132 y229 w610 h30 vKeyText145, %KeyText145%
Gui, Add, Edit, x132 y269 w610 h30 vKeyText146, %KeyText146%
Gui, Add, Edit, x132 y309 w610 h30 vKeyText147, %KeyText147%
Gui, Add, Edit, x132 y349 w610 h30 vKeyText148, %KeyText148%
Gui, Add, Edit, x132 y389 w610 h30 vKeyText149, %KeyText149%
Gui, Add, Edit, x132 y429 w610 h30 vKeyText150, %KeyText150%


Gui, Show, w772 h550, SAMD-Keybinder | Version %Version%
return

stats:
/*
uebersicht := URLToVar("https://keybinderali.111mb.de/getsamd.php")
ReplacedString := StrReplace(uebersicht, "<br>", "")
Gui, stats: Font, cblack s10 bold , Arial
Gui, stats: Add, Edit, x0 y0 w1100 h550 ReadOnly cblack, %ReplacedString%
Gui, stats: show, w1100 h500, SAMD Keybinder by Kabby | Keybinderstats
*/
return

statsguiclose:
;Gui, stats: destroy
return

Abord:
Gosub, main
return

Variablen:
MsgBox, 64, Variablen, [ID] = ID`n[Name] = Name`n[Zone] = Zone`n[City] = City`n[Kills] = Kills`n[Deaths] = Tode
return

secSave:
keyVar := 0
Loop 120
{
	GuiControlGet, Key%keyVar%
	keyVar++
}
keyVar := 0
Loop 150
{
	GuiControlGet, KeyText%keyVar%
	GuiControlGet, TextEnter%keyVar%
	keyVar++
}
IniWrite, %Key1%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key1
IniWrite, %Key2%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key2
IniWrite, %Key3%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key3
IniWrite, %Key4%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key4
IniWrite, %Key5%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key5
IniWrite, %Key6%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key6
IniWrite, %Key7%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key7
IniWrite, %Key8%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key8
IniWrite, %Key9%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key9
IniWrite, %Key10%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key10
IniWrite, %Key11%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key11
IniWrite, %Key12%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key12
IniWrite, %Key13%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key13
IniWrite, %Key14%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key14
IniWrite, %Key15%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key15
IniWrite, %Key16%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key16
IniWrite, %Key17%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key17
IniWrite, %Key18%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key18
IniWrite, %Key19%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key19
IniWrite, %Key20%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key20
IniWrite, %Key21%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key21
IniWrite, %Key22%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key22
IniWrite, %Key23%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key23
IniWrite, %Key24%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key24
IniWrite, %Key25%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key25
IniWrite, %Key26%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key26
IniWrite, %Key27%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key27
IniWrite, %Key28%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key28
IniWrite, %Key29%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key29
IniWrite, %Key30%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key30
IniWrite, %Key31%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key31
IniWrite, %Key32%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key32
IniWrite, %Key33%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key33
IniWrite, %Key34%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key34
IniWrite, %Key35%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key35
IniWrite, %Key36%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key36
IniWrite, %Key37%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key37
IniWrite, %Key38%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key38
IniWrite, %Key39%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key39
IniWrite, %Key40%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key40
IniWrite, %Key41%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key41
IniWrite, %Key42%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key42
IniWrite, %Key43%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key43
IniWrite, %Key44%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key44
IniWrite, %Key45%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key45
IniWrite, %Key46%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key46
IniWrite, %Key47%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key47
IniWrite, %Key48%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key48
IniWrite, %Key49%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key49
IniWrite, %Key50%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key50
IniWrite, %Key51%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key51
IniWrite, %Key52%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key52
IniWrite, %Key53%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key53
IniWrite, %Key54%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key54
IniWrite, %Key55%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key55
IniWrite, %Key56%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key56
IniWrite, %Key57%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key57
IniWrite, %Key58%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key58
IniWrite, %Key59%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key59
IniWrite, %Key60%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key60
IniWrite, %Key61%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key61
IniWrite, %Key62%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key62
IniWrite, %Key63%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key63
IniWrite, %Key64%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key64
IniWrite, %Key65%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key65
IniWrite, %Key66%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key66
IniWrite, %Key67%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key67
IniWrite, %Key68%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key68
IniWrite, %Key69%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key69
IniWrite, %Key70%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key70
IniWrite, %Key71%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key71
IniWrite, %Key72%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key72
IniWrite, %Key73%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key73
IniWrite, %Key74%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key74
IniWrite, %Key75%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key75
IniWrite, %Key76%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key76
IniWrite, %Key77%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key77
IniWrite, %Key78%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key78
IniWrite, %Key79%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key79
IniWrite, %Key80%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key80
IniWrite, %Key81%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key81
IniWrite, %Key82%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key82
IniWrite, %Key83%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key83
IniWrite, %Key84%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key84
IniWrite, %Key85%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key85
IniWrite, %Key86%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key86
IniWrite, %Key87%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key87
IniWrite, %Key88%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key88
IniWrite, %Key89%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key89
IniWrite, %Key90%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key90
IniWrite, %Key91%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key91
IniWrite, %Key92%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key92
IniWrite, %Key93%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key93
IniWrite, %Key94%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key94
IniWrite, %Key95%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key95
IniWrite, %Key96%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key96
IniWrite, %Key97%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key97
IniWrite, %Key98%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key98
IniWrite, %Key99%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key99
IniWrite, %Key100%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key100
IniWrite, %Key101%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key101
IniWrite, %Key102%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key102
IniWrite, %Key103%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key103
IniWrite, %Key104%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key104
IniWrite, %Key105%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key105
IniWrite, %Key106%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key106
IniWrite, %Key107%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key107
IniWrite, %Key108%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key108
IniWrite, %Key109%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key109
IniWrite, %Key110%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key110
IniWrite, %Key111%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key111
IniWrite, %Key112%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key112
IniWrite, %Key113%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key113
IniWrite, %Key114%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key114
IniWrite, %Key115%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key115
IniWrite, %Key116%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key116
IniWrite, %Key117%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key117
IniWrite, %Key118%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key118
IniWrite, %Key119%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key119
IniWrite, %Key120%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key120
IniWrite, %Key121%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key121
IniWrite, %Key122%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key122
IniWrite, %Key123%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key123
IniWrite, %Key124%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key124
IniWrite, %Key125%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key125
IniWrite, %Key126%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key126
IniWrite, %Key127%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key127
IniWrite, %Key128%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key128
IniWrite, %Key129%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key129
IniWrite, %Key130%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, Key130
IniWrite, %KeyText1%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText1
IniWrite, %KeyText2%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText2
IniWrite, %KeyText3%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText3
IniWrite, %KeyText4%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText4
IniWrite, %KeyText5%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText5
IniWrite, %KeyText6%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText6
IniWrite, %KeyText7%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText7
IniWrite, %KeyText8%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText8
IniWrite, %KeyText9%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText9
IniWrite, %KeyText10%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText10
IniWrite, %KeyText11%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText11
IniWrite, %KeyText12%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText12
IniWrite, %KeyText13%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText13
IniWrite, %KeyText14%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText14
IniWrite, %KeyText15%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText15
IniWrite, %KeyText16%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText16
IniWrite, %KeyText17%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText17
IniWrite, %KeyText18%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText18
IniWrite, %KeyText19%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText19
IniWrite, %KeyText20%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText20
IniWrite, %KeyText21%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText21
IniWrite, %KeyText22%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText22
IniWrite, %KeyText23%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText23
IniWrite, %KeyText24%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText24
IniWrite, %KeyText25%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText25
IniWrite, %KeyText26%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText26
IniWrite, %KeyText27%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText27
IniWrite, %KeyText28%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText28
IniWrite, %KeyText29%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText29
IniWrite, %KeyText30%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText30
IniWrite, %KeyText31%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText31
IniWrite, %KeyText32%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText32
IniWrite, %KeyText33%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText33
IniWrite, %KeyText34%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText34
IniWrite, %KeyText35%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText35
IniWrite, %KeyText36%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText36
IniWrite, %KeyText37%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText37
IniWrite, %KeyText38%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText38
IniWrite, %KeyText39%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText39
IniWrite, %KeyText40%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText40
IniWrite, %KeyText41%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText41
IniWrite, %KeyText42%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText42
IniWrite, %KeyText43%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText43
IniWrite, %KeyText44%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText44
IniWrite, %KeyText45%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText45
IniWrite, %KeyText46%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText46
IniWrite, %KeyText47%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText47
IniWrite, %KeyText48%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText48
IniWrite, %KeyText49%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText49
IniWrite, %KeyText50%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText50
IniWrite, %KeyText51%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText51
IniWrite, %KeyText52%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText52
IniWrite, %KeyText53%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText53
IniWrite, %KeyText54%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText54
IniWrite, %KeyText55%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText55
IniWrite, %KeyText56%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText56
IniWrite, %KeyText57%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText57
IniWrite, %KeyText58%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText58
IniWrite, %KeyText59%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText59
IniWrite, %KeyText60%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText60
IniWrite, %KeyText61%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText61
IniWrite, %KeyText62%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText62
IniWrite, %KeyText63%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText63
IniWrite, %KeyText64%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText64
IniWrite, %KeyText65%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText65
IniWrite, %KeyText66%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText66
IniWrite, %KeyText67%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText67
IniWrite, %KeyText68%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText68
IniWrite, %KeyText69%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText69
IniWrite, %KeyText70%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText70
IniWrite, %KeyText71%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText71
IniWrite, %KeyText72%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText72
IniWrite, %KeyText73%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText73
IniWrite, %KeyText74%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText74
IniWrite, %KeyText75%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText75
IniWrite, %KeyText76%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText76
IniWrite, %KeyText77%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText77
IniWrite, %KeyText78%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText78
IniWrite, %KeyText79%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText79
IniWrite, %KeyText80%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText80
IniWrite, %KeyText81%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText81
IniWrite, %KeyText82%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText82
IniWrite, %KeyText83%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText83
IniWrite, %KeyText84%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText84
IniWrite, %KeyText85%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText85
IniWrite, %KeyText86%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText86
IniWrite, %KeyText87%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText87
IniWrite, %KeyText88%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText88
IniWrite, %KeyText89%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText89
IniWrite, %KeyText90%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText90
IniWrite, %KeyText91%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText91
IniWrite, %KeyText92%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText92
IniWrite, %KeyText93%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText93
IniWrite, %KeyText94%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText94
IniWrite, %KeyText95%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText95
IniWrite, %KeyText96%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText96
IniWrite, %KeyText97%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText97
IniWrite, %KeyText98%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText98
IniWrite, %KeyText99%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText99
IniWrite, %KeyText100%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText100
IniWrite, %KeyText101%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText101
IniWrite, %KeyText102%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText102
IniWrite, %KeyText103%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText103
IniWrite, %KeyText104%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText104
IniWrite, %KeyText105%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText105
IniWrite, %KeyText106%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText106
IniWrite, %KeyText107%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText107
IniWrite, %KeyText108%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText108
IniWrite, %KeyText109%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText109
IniWrite, %KeyText110%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText110
IniWrite, %KeyText111%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText111
IniWrite, %KeyText112%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText112
IniWrite, %KeyText113%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText113
IniWrite, %KeyText114%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText114
IniWrite, %KeyText115%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText115
IniWrite, %KeyText116%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText116
IniWrite, %KeyText117%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText117
IniWrite, %KeyText118%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText118
IniWrite, %KeyText119%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText119
IniWrite, %KeyText120%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText120
IniWrite, %KeyText121%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText121
IniWrite, %KeyText122%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText122
IniWrite, %KeyText123%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText123
IniWrite, %KeyText124%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText124
IniWrite, %KeyText125%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText125
IniWrite, %KeyText126%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText126
IniWrite, %KeyText127%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText127
IniWrite, %KeyText128%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText128
IniWrite, %KeyText129%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText129
IniWrite, %KeyText130%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText130
IniWrite, %KeyText131%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText131
IniWrite, %KeyText132%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText132
IniWrite, %KeyText133%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText133
IniWrite, %KeyText134%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText134
IniWrite, %KeyText135%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText135
IniWrite, %KeyText136%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText136
IniWrite, %KeyText137%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText137
IniWrite, %KeyText138%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText138
IniWrite, %KeyText139%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText139
IniWrite, %KeyText140%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText140
IniWrite, %KeyText141%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText141
IniWrite, %KeyText142%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText142
IniWrite, %KeyText143%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText143
IniWrite, %KeyText144%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText144
IniWrite, %KeyText145%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText145
IniWrite, %KeyText146%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText146
IniWrite, %KeyText147%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText147
IniWrite, %KeyText148%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText148
IniWrite, %KeyText149%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText149
IniWrite, %KeyText150%, %a_MyDocuments%\KabbyBinder\settings.ini, KabbyBinder, KeyText150
MsgBox, 48, Speichern, Keybinder wurden erfolgreich gespeichert!
return

readCalls:
GetChatLine(0, firstLine)
;[NOTRUFZENTRALE] Kazim (ID: 44) ist sehr verletzt und benötigt dringende Hilfe. Benutze: /Sfinden!
if(InStr(firstLine, "[NOTRUFZENTRALE]") && InStr(firstLine, "ist sehr verletzt und benötigt dringende Hilfe.")){
	RegExMatch(firstLine, "\[NOTRUFZENTRALE\] (.*) \(ID\: (.*)\) ist sehr verletzt und benötigt dringende Hilfe\. Benutze\: \/Sfinden\!", playerName)
    KMSG("Drücke die Taste '" acceptLastEmCall "' um den Notruf von " playerName1 " [ID: " playerName2 "] anzunehmen!")
	newNotrufID := playerName2
}
if(InStr(firstLine, "ZENTRALE: Hausnummer") && InStr(firstLine, "steht unter Flammen")){
    RegExMatch(firstLine, "ZENTRALE\: Hausnummer (.*) steht unter Flammen", hausnummer)
    KMSG("Drücke die Taste '" acceptLastFire "' um den Hausbrand an der Hausnummer " hausnummer1 " anzunehmen!")
    fireNumber := hausnummer1
}
/*
if(InStr(firstLine, "[NOTRUFZENTRALE] Sanitäter " sampuser " hat den Verletzten") && InStr(firstLine, "wiederbelebt.")){
	URLDownloadToFile, https://keybinderali.111mb.de//register1.php?username=%sampuser%, reg.txt
	sleep, 500
	URLDownloadToFile, https://keybinderali.111mb.de/heal.php?username=%sampuser%&healadd=1, heal.txt
	FileDelete, heal.txt
	FileDelete, reg.txt
	AddChatMessage("{FF0000}+ eine Person wiederbelebt!")
}
*/
return

aEngine:
if(getVehicleType() != 9){
	if(helm == true){
		SendChat("/helm")
		helm := false
	}
}
if(DoOnce == 0){
	OldState := isPlayerDriver()
	DoOnce := 1
}
NewState := isPlayerDriver()
if(OldState == 1 && NewState != 1){
	OldState := isPlayerDriver()
	OnPlayerExitVehicle()
}else if(OldState != 1 && NewState == 1){
	OldState := isPlayerDriver()
	OnPlayerEnterVehicle()
}
return

mainTimer:
GetChatLine(0, mainFirstLine)
if(InStr(mainFirstLine, "Zollstation") && InStr(mainFirstLine, "/zoll")){
	SendChat("/zollamt")
}
if(IsPlayerInRange3D(1454.3268,-1086.8147,16.8900, 3)){
	SendChat("/staatrepair")
	sleep 3000
}
return

~F::
if(IsChatOpen() || IsDialogOpen()){
	return
}
If(IsPlayerinAnyVehicle() == 1 && IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 1){
	SendChat("/motor")
	if(IsVehicleLightEnabled() == 1){
		SendChat("/licht")
	}
}
return

~Enter::
if(IsChatOpen() || IsDialogOpen()){
	return
}
If(IsPlayerinAnyVehicle() == 1 && IsPlayerDriver() == 1 && IsVehicleEngineEnabled() == 1){
	SendChat("/motor")
	if(IsVehicleLightEnabled() == 1){
		SendChat("/licht")
	}
}
return

acceptEmCall:
if(isChatOpen() || isDialogOpen()){
	return
}
emCall := PlayerInput("/sfinden ")
if(emCall == ""){
	return
}
if emCall is not Integer
{
	KMSG("Du musst die ID eingeben!")
	return
}
GetPlayerNameByID(emCall, emCallName, 65)
SendChat("/fc Ich bin zum Patienten " emCallName " [ID: " emCall "] unterwegs!")
SendChat("/sfinden " emCall)
return

acceptLastEmCall:
if(isChatOpen() || isDialogOpen()){
	return
}
if(newNotrufID == ""){
	KMSG("Es gibt keinen Notruf zum annehmen!")
    return
}
GetPlayerNameByID(newNotrufID, newNotrufName, 65)
SendChat("/fc Ich bin zum Patienten " newNotrufName " [ID: " newNotrufID "] unterwegs!")
SendChat("/sfinden " newNotrufID)
exNotrufID := newNotrufID
newNotrufID := ""
return

acceptFire:
if(isChatOpen() || isDialogOpen()){
    return
}
fireNum := PlayerInput("/haussuchen ")
if fireNum is not Integer
{
    KMSG("Du musst die Hausnummer eingeben")
    return
}
SendChat("/fc Ich bin zum Hausbrand an der Hausnummer " fireNum " unterwegs!")
SendChat("/haussuchen " fireNum)
return

acceptLastFire:
if(isChatOpen() || isDialogOpen()){
    return
}
if(fireNumber == ""){
    KMSG("Es gibt keinen Hausbrand zum annehmen!")
    return
}
SendChat("/fc Ich bin zum Hausbrand an der Hausnummer " fireNumber " unterwegs!")
SendChat("/haussuchen " fireNumber)
fireNumber := ""
return

revivePlayer:
if(isChatOpen() || isDialogOpen()){
    return
}
getPlayerName(name, 65)
reviveID := PlayerInput("ID: ")
if reviveID is not Integer
{
    SendChat("/ic Guten Tag. Sanitäter " name " ist vor Ort!")
    SendChat("/ic Ich werde Ihnen nun erste Hilfe leisten.")
    SendChat("/wiederbeleben " reviveID)
    Sleep, 2500
    SendChat("/ic Ich wünsche Ihnen eine gute Besserung und noch einen schönen Tag!")
    return
}
GetPlayerNameByID(reviveID, reviveName, 65)
SendChat("/ic Herr/Frau " reviveName ", Sanitäter " name " ist vor Ort!")
SendChat("/ic Ich werde Ihnen nun erste Hilfe leisten.")
SendChat("/wiederbeleben " reviveID)
Sleep, 2500
SendChat("/ic Herr/Frau " reviveName ", ich wünsche Ihnen eine gute Besserung und noch einen schönen Tag!")
return

reviveEmCall:
if(isChatOpen() || isDialogOpen()){
    return
}
if(exNotrufID == ""){
    KMSG("Du hast keinen Notruf mit der Taste '" acceptLastEmCall "' angenommen!")
    return
}
getPlayerName(name, 65)
getPlayerNameByID(exNotrufID, exNotrufName, 65)
SendChat("Herr/Frau " exNotrufName ", Sanitäter " name " ist vor Ort!")
SendChat("/ic Ich werde Ihnen nun erste Hilfe leisten.")
SendChat("/wiederbeleben " exNotrufID)
Sleep, 2500
SendChat("/ic Herr/Frau " exNotrufName ", ich wünsche Ihnen eine gute Besserung und noch einen schönen Tag!")
exNotrufID := ""
return

denyRevive:
if(isChatOpen() || isDialogOpen()){
    return
}
SendChat("Sie haben einen Notruf abgsetzt!")
SendChat("Jedoch können wir Sie nicht wiederbeleben da der Täter noch vor Ort ist und wir uns damit in Gefahr bringen!")
newNotrufID := ""
exNotrufID := ""
return

healPlayer:
if(isChatOpen() || isDialogOpen()){
    return
}
if(isPlayerInAnyVehicle()){
    SendInput, t/sheilen
}
return

warning:
if(isChatOpen() || isDialogOpen()){
    return
}
if(isPlayerInAnyVehicle() != 1){
    return
}
if(GetVehicleModelId() == 416 || GetVehicleModelId() == 490 || GetVehicleModelId() == 560 || GetVehicleModelId() == 426 || GetVehicleModelId() == 442){
    SendChat("/m ->-[ACHTUNG]-<- Rettungsdienst im Einsatz!")
    SendChat("/m ->-[RETTUNGSDIENST]-<- Räumen Sie umgehend die Straße!")
}else if(GetVehicleModelId() == 407 || GetVehicleModelId() == 544){
    SendChat("/m ->-[ACHTUNG]-<- Feuerwehr im Einsatz!")
    SendChat("/m ->-[FEUERWEHR]-<- Räumen Sie umgehend die Straße!")
}else if(GetVehicleModelId() == 487){
    SendChat("/m ->-[ACHTUNG]-<- San Andreas Luftrettung im Einsatz!")
	SendChat("/m ->-[S A L R]-<- Räumen Sie umgehend das Gelände!")
}
return

samdGate:
if(isChatOpen() || isDialogOpen()){
    return
}
SendChat("/samdgarage")
return

blauLicht:
if(isChatOpen() || isDialogOpen()){
    return
}
if(isPlayerInAnyVehicle() != 1){
    return
}
if(GetVehicleModelId() == 416){
	SendChat("/rtwsirene")
}else{
	SendChat("/hsirene")
}
return

/*
:?:/ks::
URLDownloadToFile, https://keybinderali.111mb.de/getsamduser.php?username=%sampuser%, stat.txt
FileRead, stat, stat.txt
stats := StrReplace(stat, "  ", "")
stats1 := StrReplace(stats, "Spieler", "{0404B4}Spieler{F2f2f2}")
AddChatMessage("{F2f2f2}" stats1 "")
FileDelete, stat.txt
return
*/

^ & 0::
if(isChatOpen() || isDialogOpen() || KeyText1 == ""){
	return
}
SendBind(KeyText1)
return

^ & 1::
if(isChatOpen() || isDialogOpen() || KeyText2 == ""){
	return
}
SendBind(KeyText2)
return

^ & 2::
if(isChatOpen() || isDialogOpen() || KeyText3 == ""){
	return
}
SendBind(KeyText3)
return

^ & 3::
if(isChatOpen() || isDialogOpen() || KeyText4 == ""){
	return
}
SendBind(KeyText4)
return

^ & 4::
if(isChatOpen() || isDialogOpen() || KeyText5 == ""){
	return
}
SendBind(KeyText5)
return

^ & 5::
if(isChatOpen() || isDialogOpen() || KeyText6 == ""){
	return
}
SendBind(KeyText6)
return

^ & 6::
if(isChatOpen() || isDialogOpen() || KeyText7 == ""){
	return
}
SendBind(KeyText7)
return

^ & 7::
if(isChatOpen() || isDialogOpen() || KeyText8 == ""){
	return
}
SendBind(KeyText8)
return

^ & 8::
if(isChatOpen() || isDialogOpen() || KeyText9 == ""){
	return
}
SendBind(KeyText9)
return

^ & 9::
if(isChatOpen() || isDialogOpen() || KeyText10 == ""){
	return
}
SendBind(KeyText10)
return

^0::
if(isChatOpen() || isDialogOpen() || KeyText11 == ""){
	return
}
SendBind(KeyText11)
return

^1::
if(isChatOpen() || isDialogOpen() || KeyText12 == ""){
	return
}
SendBind(KeyText12)
return

^2::
if(isChatOpen() || isDialogOpen() || KeyText13 != ""){
	return
}
SendBind(KeyText13)
return

^3::
if(isChatOpen() || isDialogOpen() || KeyText14 == ""){
	return
}
SendBind(KeyText14)
return

^4::
if(isChatOpen() || isDialogOpen() || KeyText15 == ""){
	return
}
SendBind(KeyText15)
return

^5::
if(isChatOpen() || isDialogOpen() || KeyText16 == ""){
	return
}
SendBind(KeyText16)
return

^6::
if(isChatOpen() || isDialogOpen() || KeyText17 == ""){
	return
}
SendBind(KeyText17)
return

^7::
if(isChatOpen() || isDialogOpen() || KeyText18 == ""){
	return
}
SendBind(KeyText18)
return

^8::
if(isChatOpen() || isDialogOpen() || KeyText19 == ""){
	return
}
SendBind(KeyText19)
return

^9::
if(isChatOpen() || isDialogOpen() || KeyText20 == ""){
	return
}
SendBind(KeyText20)
return

F13::
if(isChatOpen() || isDialogOpen() || KeyText21 == ""){
	return
}
SendBind(KeyText21)
return

F14::
if(isChatOpen() || isDialogOpen() || KeyText22 == ""){
	return
}
SendBind(KeyText22)
return

F15::
if(isChatOpen() || isDialogOpen() || KeyText23 == ""){
	return
}
SendBind(KeyText23)
return

F16::
if(isChatOpen() || isDialogOpen() || KeyText24 == ""){
	return
}
SendBind(KeyText24)
return

F17::
if(isChatOpen() || isDialogOpen() || KeyText25 == ""){
	return
}
SendBind(KeyText25)
return

F18::
if(isChatOpen() || isDialogOpen() || KeyText26 == ""){
	return
}
SendBind(KeyText26)
return

F19::
if(isChatOpen() || isDialogOpen() || KeyText27 == ""){
	return
}
SendBind(KeyText27)
return

F20::
if(isChatOpen() || isDialogOpen() || KeyText28 == ""){
	return
}
SendBind(KeyText28)
return

F21::
if(isChatOpen() || isDialogOpen() || KeyText29 == ""){
	return
}
SendBind(KeyText29)
return

F22::
if(isChatOpen() || isDialogOpen() || KeyText30 == ""){
	return
}
SendBind(KeyText30)
return

Hotkey1:
if(isChatOpen() || isDialogOpen() || KeyText31 == ""){
	return
}
SendBind(KeyText31)
return

Hotkey2:
if(isChatOpen() || isDialogOpen() || KeyText32 == ""){
	return
}
SendBind(KeyText32)
return

Hotkey3:
if(isChatOpen() || isDialogOpen() || KeyText33 == ""){
	return
}
SendBind(KeyText33)
return

Hotkey4:
if(isChatOpen() || isDialogOpen() || KeyText34 == ""){
	return
}
SendBind(KeyText34)
return

Hotkey5:
if(isChatOpen() || isDialogOpen() || KeyText35 == ""){
	return
}
SendBind(KeyText35)
return

Hotkey6:
if(isChatOpen() || isDialogOpen() || KeyText36 == ""){
	return
}
SendBind(KeyText36)
return

Hotkey7:
if(isChatOpen() || isDialogOpen() || KeyText37 == ""){
	return
}
SendBind(KeyText37)
return

Hotkey8:
if(isChatOpen() || isDialogOpen() || KeyText38 == ""){
	return
}
SendBind(KeyText38)
return

Hotkey9:
if(isChatOpen() || isDialogOpen() || KeyText39 == ""){
	return
}
SendBind(KeyText39)
return

Hotkey10:
if(isChatOpen() || isDialogOpen() || KeyText40 == ""){
	return
}
SendBind(KeyText40)
return

Hotkey11:
if(isChatOpen() || isDialogOpen() || KeyText41 == ""){
	return
}
SendBind(KeyText41)
return

Hotkey12:
if(isChatOpen() || isDialogOpen() || KeyText42 == ""){
	return
}
SendBind(KeyText42)
return

Hotkey13:
if(isChatOpen() || isDialogOpen() || KeyText43 == ""){
	return
}
SendBind(KeyText43)
return

Hotkey14:
if(isChatOpen() || isDialogOpen() || KeyText44 == ""){
	return
}
SendBind(KeyText44)
return

Hotkey15:
if(isChatOpen() || isDialogOpen() || KeyText45 == ""){
	return
}
SendBind(KeyText45)
return

Hotkey16:
if(isChatOpen() || isDialogOpen() || KeyText46 == ""){
	return
}
SendBind(KeyText46)
return

Hotkey17:
if(isChatOpen() || isDialogOpen() || KeyText47 == ""){
	return
}
SendBind(KeyText47)
return

Hotkey18:
if(isChatOpen() || isDialogOpen() || KeyText48 == ""){
	return
}
SendBind(KeyText48)
return

Hotkey19:
if(isChatOpen() || isDialogOpen() || KeyText49 == ""){
	return
}
SendBind(KeyText49)
return

Hotkey20:
if(isChatOpen() || isDialogOpen() || KeyText50 == ""){
	return
}
SendBind(KeyText50)
return

Hotkey21:
if(isChatOpen() || isDialogOpen() || KeyText51 == ""){
	return
}
SendBind(KeyText51)
return

Hotkey22:
if(isChatOpen() || isDialogOpen() || KeyText52 == ""){
	return
}
SendBind(KeyText52)
return

Hotkey23:
if(isChatOpen() || isDialogOpen() || KeyText53 == ""){
	return
}
SendBind(KeyText53)
return

Hotkey24:
if(isChatOpen() || isDialogOpen() || KeyText54 == ""){
	return
}
SendBind(KeyText54)
return

Hotkey25:
if(isChatOpen() || isDialogOpen() || KeyText55 == ""){
	return
}
SendBind(KeyText55)
return

Hotkey26:
if(isChatOpen() || isDialogOpen() || KeyText56 == ""){
	return
}
SendBind(KeyText56)
return

Hotkey27:
if(isChatOpen() || isDialogOpen() || KeyText57 == ""){
	return
}
SendBind(KeyText57)
return

Hotkey28:
if(isChatOpen() || isDialogOpen() || KeyText58 == ""){
	return
}
SendBind(KeyText58)
return

Hotkey29:
if(isChatOpen() || isDialogOpen() || KeyText59 == ""){
	return
}
SendBind(KeyText59)
return

Hotkey30:
if(isChatOpen() || isDialogOpen() || KeyText60 == ""){
	return
}
SendBind(KeyText60)
return

Hotkey31:
if(isChatOpen() || isDialogOpen() || KeyText61 == ""){
	return
}
SendBind(KeyText61)
return

Hotkey32:
if(isChatOpen() || isDialogOpen() || KeyText62 == ""){
	return
}
SendBind(KeyText62)
return

Hotkey33:
if(isChatOpen() || isDialogOpen() || KeyText63 == ""){
	return
}
SendBind(KeyText63)
return

Hotkey34:
if(isChatOpen() || isDialogOpen() || KeyText64 == ""){
	return
}
SendBind(KeyText64)
return

Hotkey35:
if(isChatOpen() || isDialogOpen() || KeyText65 == ""){
	return
}
SendBind(KeyText65)
return

Hotkey36:
if(isChatOpen() || isDialogOpen() || KeyText66 == ""){
	return
}
SendBind(KeyText66)
return

Hotkey37:
if(isChatOpen() || isDialogOpen() || KeyText67 == ""){
	return
}
SendBind(KeyText67)
return

Hotkey38:
if(isChatOpen() || isDialogOpen() || KeyText68 == ""){
	return
}
SendBind(KeyText68)
return

Hotkey39:
if(isChatOpen() || isDialogOpen() || KeyText69 == ""){
	return
}
SendBind(KeyText69)
return

Hotkey40:
if(isChatOpen() || isDialogOpen() || KeyText70 == ""){
	return
}
SendBind(KeyText70)
return

Hotkey41:
if(isChatOpen() || isDialogOpen() || KeyText71 == ""){
	return
}
SendBind(KeyText71)
return

Hotkey42:
if(isChatOpen() || isDialogOpen() || KeyText72 == ""){
	return
}
SendBind(KeyText72)
return

Hotkey43:
if(isChatOpen() || isDialogOpen() || KeyText73 == ""){
	return
}
SendBind(KeyText73)
return

Hotkey44:
if(isChatOpen() || isDialogOpen() || KeyText74 == ""){
	return
}
SendBind(KeyText74)
return

Hotkey45:
if(isChatOpen() || isDialogOpen() || KeyText75 == ""){
	return
}
SendBind(KeyText75)
return

Hotkey46:
if(isChatOpen() || isDialogOpen() || KeyText76 == ""){
	return
}
SendBind(KeyText76)
return

Hotkey47:
if(isChatOpen() || isDialogOpen() || KeyText77 == ""){
	return
}
SendBind(KeyText77)
return

Hotkey48:
if(isChatOpen() || isDialogOpen() || KeyText78 == ""){
	return
}
SendBind(KeyText78)
return

Hotkey49:
if(isChatOpen() || isDialogOpen() || KeyText79 == ""){
	return
}
SendBind(KeyText79)
return

Hotkey50:
if(isChatOpen() || isDialogOpen() || KeyText80 == ""){
	return
}
SendBind(KeyText80)
return

Hotkey51:
if(isChatOpen() || isDialogOpen() || KeyText81 == ""){
	return
}
SendBind(KeyText81)
return

Hotkey52:
if(isChatOpen() || isDialogOpen() || KeyText82 == ""){
	return
}
SendBind(KeyText82)
return

Hotkey53:
if(isChatOpen() || isDialogOpen() || KeyText83 == ""){
	return
}
SendBind(KeyText83)
return

Hotkey54:
if(isChatOpen() || isDialogOpen() || KeyText84 == ""){
	return
}
SendBind(KeyText84)
return

Hotkey55:
if(isChatOpen() || isDialogOpen() || KeyText85 == ""){
	return
}
SendBind(KeyText85)
return

Hotkey56:
if(isChatOpen() || isDialogOpen() || KeyText86 == ""){
	return
}
SendBind(KeyText86)
return

Hotkey57:
if(isChatOpen() || isDialogOpen() || KeyText87 == ""){
	return
}
SendBind(KeyText87)
return

Hotkey58:
if(isChatOpen() || isDialogOpen() || KeyText88 == ""){
	return
}
SendBind(KeyText88)
return

Hotkey59:
if(isChatOpen() || isDialogOpen() || KeyText89 == ""){
	return
}
SendBind(KeyText89)
return

Hotkey60:
if(isChatOpen() || isDialogOpen() || KeyText90 == ""){
	return
}
SendBind(KeyText90)
return

Hotkey61:
if(isChatOpen() || isDialogOpen() || KeyText91 == ""){
	return
}
SendBind(KeyText91)
return

Hotkey62:
if(isChatOpen() || isDialogOpen() || KeyText92 == ""){
	return
}
SendBind(KeyText92)
return

Hotkey63:
if(isChatOpen() || isDialogOpen() || KeyText93 == ""){
	return
}
SendBind(KeyText93)
return

Hotkey64:
if(isChatOpen() || isDialogOpen() || KeyText94 == ""){
	return
}
SendBind(KeyText94)
return

Hotkey65:
if(isChatOpen() || isDialogOpen() || KeyText95 == ""){
	return
}
SendBind(KeyText95)
return

Hotkey66:
if(isChatOpen() || isDialogOpen() || KeyText96 == ""){
	return
}
SendBind(KeyText96)
return

Hotkey67:
if(isChatOpen() || isDialogOpen() || KeyText97 == ""){
	return
}
SendBind(KeyText97)
return

Hotkey68:
if(isChatOpen() || isDialogOpen() || KeyText98 == ""){
	return
}
SendBind(KeyText98)
return

Hotkey69:
if(isChatOpen() || isDialogOpen() || KeyText99 == ""){
	return
}
SendBind(KeyText99)
return

Hotkey70:
if(isChatOpen() || isDialogOpen() || KeyText100 == ""){
	return
}
SendBind(KeyText100)
return

Hotkey71:
if(isChatOpen() || isDialogOpen() || KeyText101 == ""){
	return
}
SendBind(KeyText101)
return

Hotkey72:
if(isChatOpen() || isDialogOpen() || KeyText102 == ""){
	return
}
SendBind(KeyText102)
return

Hotkey73:
if(isChatOpen() || isDialogOpen() || KeyText103 == ""){
	return
}
SendBind(KeyText103)

return

Hotkey74:
if(isChatOpen() || isDialogOpen() || KeyText104 == ""){
	return
}
SendBind(KeyText104)
return

Hotkey75:
if(isChatOpen() || isDialogOpen() || KeyText105 == ""){
	return
}
SendBind(KeyText105)
return

Hotkey76:
if(isChatOpen() || isDialogOpen() || KeyText106 == ""){
	return
}
SendBind(KeyText106)
return

Hotkey77:
if(isChatOpen() || isDialogOpen() || KeyText107 == ""){
	return
}
SendBind(KeyText107)
return

Hotkey78:
if(isChatOpen() || isDialogOpen() || KeyText108 == ""){
	return
}
SendBind(KeyText108)
return

Hotkey79:
if(isChatOpen() || isDialogOpen() || KeyText109 == ""){
	return
}
SendBind(KeyText109)
return

Hotkey80:
if(isChatOpen() || isDialogOpen() || KeyText110 == ""){
	return
}
SendBind(KeyText110)
return

Hotkey81:
if(isChatOpen() || isDialogOpen() || KeyText111 == ""){
	return
}
SendBind(KeyText111)
return

Hotkey82:
if(isChatOpen() || isDialogOpen() || KeyText112 == ""){
	return
}
SendBind(KeyText112)
return

Hotkey83:
if(isChatOpen() || isDialogOpen() || KeyText113 == ""){
	return
}
SendBind(KeyText113)
return

Hotkey84:
if(isChatOpen() || isDialogOpen() || KeyText114 == ""){
	return
}
SendBind(KeyText114)
return

Hotkey85:
if(isChatOpen() || isDialogOpen() || KeyText115 == ""){
	return
}
SendBind(KeyText115)
return

Hotkey86:
if(isChatOpen() || isDialogOpen() || KeyText116 == ""){
	return
}
SendBind(KeyText116)
return

Hotkey87:
if(isChatOpen() || isDialogOpen() || KeyText117 == ""){
	return
}
SendBind(KeyText117)
return

Hotkey88:
if(isChatOpen() || isDialogOpen() || KeyText118 == ""){
	return
}
SendBind(KeyText118)
return

Hotkey89:
if(isChatOpen() || isDialogOpen() || KeyText119 == ""){
	return
}
SendBind(KeyText119)
return

Hotkey90:
if(isChatOpen() || isDialogOpen() || KeyText120 == ""){
	return
}
SendBind(KeyText120)
return

Hotkey91:
if(isChatOpen() || isDialogOpen() || KeyText121 == ""){
	return
}
SendBind(KeyText121)
return

Hotkey92:
if(isChatOpen() || isDialogOpen() || KeyText122 == ""){
	return
}
SendBind(KeyText122)
return

Hotkey93:
if(isChatOpen() || isDialogOpen() || KeyText123 == ""){
	return
}
SendBind(KeyText123)
return

Hotkey94:
if(isChatOpen() || isDialogOpen() || KeyText124 == ""){
	return
}
SendBind(KeyText124)
return

Hotkey95:
if(isChatOpen() || isDialogOpen() || KeyText125 == ""){
	return
}
SendBind(KeyText125)
return

Hotkey96:
if(isChatOpen() || isDialogOpen() || KeyText126 == ""){
	return
}
SendBind(KeyText126)
return

Hotkey97:
if(isChatOpen() || isDialogOpen() || KeyText127 == ""){
	return
}
SendBind(KeyText127)
return

Hotkey98:
if(isChatOpen() || isDialogOpen() || KeyText128 == ""){
	return
}
SendBind(KeyText128)
return

Hotkey99:
if(isChatOpen() || isDialogOpen() || KeyText129 == ""){
	return
}
SendBind(KeyText129)
return

Hotkey100:
if(isChatOpen() || isDialogOpen() || KeyText130 == ""){
	return
}
SendBind(KeyText130)
return

Hotkey101:
if(isChatOpen() || isDialogOpen() || KeyText131 == ""){
	return
}
SendBind(KeyText131)
return

Hotkey102:
if(isChatOpen() || isDialogOpen() || KeyText132 == ""){
	return
}
SendBind(KeyText132)
return

Hotkey103:
if(isChatOpen() || isDialogOpen() || KeyText133 == ""){
	return
}
SendBind(KeyText133)
return

Hotkey104:
if(isChatOpen() || isDialogOpen() || KeyText134 == ""){
	return
}
SendBind(KeyText134)
return

Hotkey105:
if(isChatOpen() || isDialogOpen() || KeyText135 == ""){
	return
}
SendBind(KeyText135)
return

Hotkey106:
if(isChatOpen() || isDialogOpen() || KeyText136 == ""){
	return
}
SendBind(KeyText136)
return

Hotkey107:
if(isChatOpen() || isDialogOpen() || KeyText137 == ""){
	return
}
SendBind(KeyText137)
return

Hotkey108:
if(isChatOpen() || isDialogOpen() || KeyText138 == ""){
	return
}
SendBind(KeyText138)
return

Hotkey109:
if(isChatOpen() || isDialogOpen() || KeyText139 == ""){
	return
}
SendBind(KeyText139)
return

Hotkey110:
if(isChatOpen() || isDialogOpen() || KeyText140 == ""){
	return
}
SendBind(KeyText140)
return

Hotkey111:
if(isChatOpen() || isDialogOpen() || KeyText141 == ""){
	return
}
SendBind(KeyText141)
return

Hotkey112:
if(isChatOpen() || isDialogOpen() || KeyText142 == ""){
	return
}
SendBind(KeyText142)
return

Hotkey113:
if(isChatOpen() || isDialogOpen() || KeyText143 == ""){
	return
}
SendBind(KeyText143)
return

Hotkey114:
if(isChatOpen() || isDialogOpen() || KeyText144 == ""){
	return
}
SendBind(KeyText144)
return

Hotkey115:
if(isChatOpen() || isDialogOpen() || KeyText145 == ""){
	return
}
SendBind(KeyText145)
return

Hotkey116:
if(isChatOpen() || isDialogOpen() || KeyText146 == ""){
	return
}
SendBind(KeyText146)

return

Hotkey117:
if(isChatOpen() || isDialogOpen() || KeyText147 == ""){
	return
}
SendBind(KeyText147)
return

Hotkey118:
if(isChatOpen() || isDialogOpen() || KeyText148 == ""){
	return
}
SendBind(KeyText148)
return

Hotkey119:
if(isChatOpen() || isDialogOpen() || KeyText149 == ""){
	return
}
SendBind(KeyText149)

return

Hotkey120:
if(isChatOpen() || isDialogOpen() || KeyText150 == ""){
	return
}
SendBind(KeyText150)
return