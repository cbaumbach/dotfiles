; Together with remap_for_typematrix_keyboard.reg this script remaps
; keys of the TypeMatrix keyboard for use under Windows 10.
;
; To have this script run at startup,
; 1) Download and install autohotkey from https://www.autohotkey.com/
; 2) Open the Windows Run app and enter "shell:startup" to open the
;    directory with the user's startup scripts.  Copy this file and
;    paste it as a shortcut into the startup directory.

#NoEnv
#Warn
SendMode Input
#SingleInstance Force

; Remap the play/pause key to left windows key
;
; Normally, I would change the scancode in the registry but SharpKeys
; (https://github.com/randyrants/sharpkeys) refuses to remap the key
; and says in its FAQs that keys that appear with a scancode of 00_100
; in SharpKeys cannot be remapped.

Media_Play_Pause::Send {LWin down}
Media_Play_Pause Up::Send {LWin up}
return
