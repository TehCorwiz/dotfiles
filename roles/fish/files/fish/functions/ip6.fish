# Defined in - @ line 0
function ip6 --description 'alias ip6 dig @resolver1.opendns.com ANY myip.opendns.com +short -6'
	dig @resolver1.opendns.com ANY myip.opendns.com +short -6 $argv;
end
