;	createfolder.asm
;	by Abouaf Eric <neyric at via dot ecp dot fr>
;
;	http://www.neyric.com/comp/ti89/
;


	include	"tios.h"
	include	"filelib.h"

	xdef	_main
	xdef	_ti89

_main:

	moveq.w	#$09,d0
	lea.l   folder(pc),a0
	jsr	filelib::createfolder

	rts

folder  dc.b	"name",0,0

	end
