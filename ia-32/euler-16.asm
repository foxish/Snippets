;2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
;What is the sum of the digits of the number 2^1000?

;compile using "nasm -f elf euler-16.asm"
;link with glibc using "gcc euler-16.o -o euler-16"
;run using "./euler-16"

        global  main
        extern  printf
        
segment .data
	arraylen 	equ 1000 	;length of the array
	powersize	equ 1000	;to calculate 2^1000
	printsep	db 10, 0
	printstring db '%d', 0
	arraystart 	equ $		;first address of array
	array 		times arraylen dd 0

segment .text
main:	
		;assign value 1 to the last element
		mov 	eax, 1
		mov 	edi, arraylen - 1
		mov     [arraystart + 4*edi], eax
		
		mov 	ecx, powersize;powersize
remul:
		push	ecx
		call 	mul2
		pop		ecx
		dec 	ecx
		jnz		remul
		
		;end of loop
		call 	print
		
		;add add all digits
		call 	addall
		
		;end of main
		ret
		
		
;##PROCEDURES
;##print	
print:
		mov 	edi, 0
loopprn:
        mov     eax, [arraystart + 4*edi]
        push 	eax
        ;push	edi
        push	printstring
        call    printf
        
        add     esp, 8 ;clear out stack entries
		inc 	edi
		cmp		edi, arraylen ;check arrayIndex
		jne		loopprn
        
        ret
        
;##multiply
mul2:
		mov		ecx, arraylen - 1 ;counter inner loop
		mov		edi, 0;carry
loopmul:
		mov     ebx, [arraystart + 4*ecx]
		mov		eax, 0
		
		;add digit there and carry, if both 0, skip iteration
		mov 	edx, ebx
		add		edx, edi
		cmp		edx, 0
		jz		nocarry ;skip iteration, what is the point!

		mov		eax, 2
		mul		ebx
		add		eax, edi
		cmp		eax, 10
		jl		nocarry
		mov		edi, 1;carry = 1
		
		;divide and take only the remainder
		push ebx
		push ecx
			mov edx, 0
			mov ecx, eax
			mov ecx, 10
			div ecx
			mov eax, edx
		pop ecx
		pop ebx
		jmp near unjump

		;no carry
nocarry:mov 	edi, 0; carry = 0
unjump:	mov		[arraystart + 4*ecx], eax
		dec 	ecx
		jnz		loopmul
		ret
		
;##addall & print results
addall:
		mov		eax, 0 ;sum-field
		mov		edi, arraylen - 1
addloop:
		mov     ebx, [arraystart + 4*edi]
		add		eax, ebx
		dec		edi
		jnz		addloop
		
		push	eax
		push 	printsep
		call	printf
		add 	esp, 4
		pop		eax
		
		push 	eax
        push	printstring
        call    printf
        add     esp, 8 ;clear out stack entries
        
        push	eax
		push 	printsep
		call	printf
		add 	esp, 4
		pop		eax
		
		ret