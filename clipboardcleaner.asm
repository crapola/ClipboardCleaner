global Main
;
extern CloseClipboard
extern ExitProcess
extern EmptyClipboard
extern MessageBoxA
extern OpenClipboard
;
section .data
title:		db "Clipboard Cleaner",0
fail:		db "Failed to empty clipboard.",0
success:	db "Clipboard has been cleared!",0
;
section .text
Main:
	sub rsp,28h	; Shadow space
	; Open and empty clipboard
	xor ecx,ecx
	;mov rcx,9001 ; Test fail...
	call OpenClipboard
	call EmptyClipboard
	cmp eax,1
	je Ok
	; Error message
    mov rcx,0
    lea rdx,[fail]
    lea r8,[title]
    mov r9d,16
    call MessageBoxA
	jmp Exit
Ok:
    mov rcx,0
    lea rdx,[success]
    lea r8,[title]
    mov r9d,64
    call MessageBoxA
Exit:
	call CloseClipboard
	add rsp,28h
	call ExitProcess
;EOF