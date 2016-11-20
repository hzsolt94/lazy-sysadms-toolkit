" Use secure vimcrypt
set cryptmethod=blowfish2

" Save as root command
function SudoWrite(bang)
	if a:bang == "!"
		execute ':silent w !sudo tee % > /dev/null' | :edit
	else
		echo "Are you sure to save as root? (Use ! )"
	endif
endfunction
command-bang W :call SudoWrite("<bang>") 
