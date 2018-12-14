# Defined in - @ line 0
function speedtest --description 'alias speedtest wget -O /dev/null http://speed.transip.nl/100mb.bin'
	wget -O /dev/null http://speed.transip.nl/100mb.bin $argv;
end
