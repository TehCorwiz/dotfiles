# Defined in - @ line 0
function ip --description 'alias ip dig @resolver1.opendns.com ANY myip.opendns.com +short -4'
	dig @resolver1.opendns.com ANY myip.opendns.com +short -4 $argv;
end
