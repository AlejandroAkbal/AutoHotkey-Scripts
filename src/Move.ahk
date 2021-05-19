; Recommended for performance and compatibility with future AutoHotkey releases.
#NoEnv	

; Enable warnings to assist with detecting common errors.
#Warn	

; Loop permanently
#Persistent

; Recommended for new scripts due to its superior speed and reliability.
SendMode Input	

; Ensures a consistent starting directory.
; SetWorkingDir %A_ScriptDir%	

minutesToWait := 3
secondsToWait := minutesToWait * 60 * 1000

stringToType := "visual studio code"

SetTimer CheckIdle, %secondsToWait%
Return

CheckIdle:
    MouseMove, -20, -20, 50, R

    Click

    Sleep, 500

    SendInput, {LWin}

    Sleep, 1000

    SendMessage, %stringToType%

    Sleep, 500

    MouseMove, 20, 20, 50, R

    Click