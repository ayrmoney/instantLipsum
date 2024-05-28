^+l::  ; Ctrl+Shift+L
{
    text := "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sit amet maximus elit. Donec consectetur, libero ut vehicula congue, libero tellus fringilla nisl, bibendum blandit ipsum neque at ex."
    ClipSaved := ClipboardAll()  ; Save the entire clipboard to a variable in AHK v2
    A_Clipboard := text  ; Set clipboard content to your text
    Sleep(100)  ; Wait a bit for the clipboard to update
    SendInput("^v")  ; Simulate Ctrl+V (paste) in AHK v2
    Sleep(100)  ; Wait a bit for the paste operation
    A_Clipboard := ClipboardAll(ClipSaved)  ; Restore the original clipboard content
    ClipSaved := ""  ; Clear the variable
    return
}