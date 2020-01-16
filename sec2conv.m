%function NewTime = sec2conv(TimeSec, StartPoint)
  % zakładam ze tu TimeSec = sekundy
  %StartPoint = yyyymmddTHHMMSS
  %TimeSec = 362.5864;
  % NewTime - time in octave (datenum)
  
 % StartPoint = Data{2,1};
  %StartPoint = StartPoint(end-14:end);
 TimeSec = Time;
  #############
  ###### lepiej zrob fevala na te petle bo program sie posra!!!
  
  [Row, Col] = size(TimeSec);
  if Row < Col
     TimeSec';
     I = Col;
   else
     I = Row;
  endif
   
  RealTime = datenum(StartPoint,'yyyymmddTHHMMSS'); %num (octave) 
  RealTimeVec = datevec(RealTime);
  
  for i = 1:I
    SampleTimeVec = sec2tvec(TimeSec(i));
    NewTime(i) = datenum(SampleTimeVec+RealTimeVec);
  endfor
%endfunction
