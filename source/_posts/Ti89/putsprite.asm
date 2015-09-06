;	putsprite.asm
;       by Abouaf Eric <neyric at via dot ecp dot fr>
;
;       http://www.neyric.com/comp/ti89/
;

	include "doorsos.h"
	include "graphlib.h"
	include "userlib.h"

	xdef	_ti89
	xdef    _main
	xdef	_comment

_main:

	jsr graphlib::clr_scr

	lea    avion,a0
	move.w #50,d0
	move.w #50,d1
	jsr graphlib::put_sprite


	jsr inton
	rts


stopint:
	move.w  #$0700,d0	;valeur supprimant toutes 
   	trap    #1   		;les interruptions, => trap #1 
   	move.l  d0,oldint  	;mémorise l'ancienne valeur 
	rts
inton:
	move.l  oldint,d0  ;remet l'ancienne valeur 
  	trap    #1  ;active 
	rts

_comment   dc.b    "Put Sprite by Abouaf Eric",0
oldint	dc.l 	0

avion:
 dc.w 16
 dc.w 2
 dc.b %00000000,%00000000
 dc.b %00000000,%00000000
 dc.b %00010000,%00000000
 dc.b %00011000,%00000000
 dc.b %10010100,%00000000
 dc.b %11010010,%00000000
 dc.b %10111111,%11100000
 dc.b %10000000,%01011000
 dc.b %10000000,%00100110
 dc.b %10110001,%11000001
 dc.b %11010010,%00111110
 dc.b %00001010,%00000000
 dc.b %00001100,%00000000
 dc.b %00001100,%00000000
 dc.b %00001000,%00000000
 dc.b %00000000,%00000000

	rts
	end   
