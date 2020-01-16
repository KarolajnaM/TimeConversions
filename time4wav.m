function t = time4wav(l,fs,st)
 
  ## zwraca wektor czasu w zaleznosci od czasu startowego pliku i czasu probkowania
  ## i - probka sygnalu
  ## fs - probkowanie w pliku
  ## czas startowy w formie yyyymmddThhmmss
  
  timeform = 'yyyymmddTHHMMSS';
  
  ## kod przygotowany to kolumnowego podawania czasu
  if columns(l)>rows(l)
    l=l';
  endif
  
  st = datenum(st,timeform);
   
  ## l sekund w nagraniu uzyskamy przez podzielenie przez fs
  s = l./fs;
  
  sb = zeros(length(s),5);
  sb = [sb,s];
  
  sn = feval(@datenum,sb);
  t = sn.+st;

##  %t = datestr(st + sn,'yyyymmddTHHMMSS.FFF');
;
  
  
  
endfunction
