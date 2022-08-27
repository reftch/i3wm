function suck --wraps='rm -f config.h; sudo make clean install; make clean' --description 'alias suck rm -f config.h; sudo make clean install; make clean'
  rm -f config.h; sudo make clean install; make clean $argv; 
end
