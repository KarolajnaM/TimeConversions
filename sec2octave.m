function timeNew = sec2octave(Time,TimeForm)
%%(nargin<4) || isempty(gap)
  if nargin == 1
  TimeForm = 'HH:MM:SS.FFF';
endif

  
    #sec date num nie dziala dla formatu tylko SS.FFF
    timeP = sec2UTC(Time);
    timeNew = datenum(timeP,TimeForm);
endfunction
