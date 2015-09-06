;	stopint.asm
;       by Abouaf Eric <neyric at via dot ecp dot fr>
;
;       http://www.neyric.com/comp/ti89/
;

	xdef	_ti89
	xdef    _main

_main:


stopint:
	move.w  #$0700,d0
   	trap    #1  
   	move.l  d0,oldint

inton:
	move.l  oldint,d0
  	trap    #1

	rts

oldint	dc.l 	0
	rts
	end   
