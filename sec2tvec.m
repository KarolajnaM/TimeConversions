function x = sec2tvec(t)
  x = zeros(1,6);
  % podziel wartos sec na czesci godzinowe minutowe sekundowe
  h = floor(t/3600);
  % jezeli sekundy to wiecej niz doba trzeba dodac
  if h > 23
    x(3) = 1;
  endif
  m = floor((t - h*3600)/60);
  s = t-h*3600-m*60;
  % s = round(s*1000)/1000;  % zaaokrali do 3 miejsc poprzecinku
  x(4:6) = [h,m,s];
 endfunction