lxi sp,2500h
mvi b,80h
mvi c,00h
loop:	in 01h
		ora c
		jz end
		mov a,b   
		out 00h
		rrc
		mov b,a
		call delay
		jmp loop

delay: 	lxi d,30d1h
		loop1:	dcx d
		mov a,d
		ora e
		jnz loop1
		ret

end: hlt