;constants
NULL    EQU 0
MB_OK      EQU 0

extern _MessageBoxA@16                          ; Import external symbols

global Start                                    ; Export symbols. The entry point

section .data                                   ; Initialized data segment
 MessageBoxText    db "HAHAHA You got Pranked", 0
 MessageBoxCaption db "Prank", 0

section .text                                   ; Code segment
Start:
 push  MB_OK                                           ; OK Button
 push  MessageBoxCaption                        ; 3rd parameter
 push  MessageBoxText                           ; 2nd parameter
 push  NULL                                  ; 1st parameter
 call  _MessageBoxA@16
 jmp  Start
