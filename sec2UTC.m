function out = sec2UTC(table)
  if rows(table)>1
    for i = 1:rows(table)
      for j=1:columns(table)
        out{i,j} = sec2hms(table(i,j));
      endfor
    endfor
  else
    out = sec2hms(table);
  endif

endfunction

  %% char? write  
 % FileNameTXT = fullfile(FolderName,sprintf('Sesion_%d.txt', j);
 % dlmwrite(FileNameTXT,TimeHMC(j))
  
%    fid = fopen('junk.csv','w')
%  fprintf(fid,'%s, %s, %s\n',c{1,:})
%  fprintf(fid,'%f, %f, %f\n',c{2:end,:})
%  fclose(fid)