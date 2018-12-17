# Defined in - @ line 0
function ipl --description alias\ ipl\ ifconfig\ \|\ grep\ -Eo\ \'inet\ \(addr:\)\?\(\[0-9\]\*\\.\)\{3\}\[0-9\]\*\'\ \|\ grep\ -Eo\ \'\(\[0-9\]\*\\.\)\{3\}\[0-9\]\*\'\ \|\ grep\ -v\ \'127.0.0.1\'
	ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' $argv;
end
