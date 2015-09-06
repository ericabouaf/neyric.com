;	createwritefile.asm
;       by Abouaf Eric <neyric at via dot ecp dot fr>
;
;       http://www.neyric.com/comp/ti89/
;

	include	"tios.h"
	include	"filelib.h"

	xdef	_main
	xdef	_ti89

_main:

	moveq.w	#$09,d0
	lea.l	varname(pc),a0
	jsr	filelib::createfile

	lea	buffer(pc),a1		;data we want to save
	moveq.w	#7,d0			; 7 bytes to write
	clr.w	d1			;beginning of the file
	jsr	filelib::writefile	; write the data
	bra	exit

exit:
	rts

varname	dc.b	"testvar",0,0
buffer	dc.b	$E5,$00,$61,$62,$63,$64,$00,$E0,$0
	end
