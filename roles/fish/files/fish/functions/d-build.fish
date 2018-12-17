# Defined in - @ line 0
function d-build --description 'alias d-build docker-compose build'
	docker-compose build $argv;
end
