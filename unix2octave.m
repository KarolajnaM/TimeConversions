function out = unix2octave(tunix)
 % out=bsxfun(@plus,bsxfun(@rdivide, bsxfun(@plus, datenum(1970,1,1,0,0,0), tunix),86400),719529)';
 
  outy=bsxfun(@rdivide, bsxfun(@plus, tunix, localtime(tunix).gmtoff),86400);
  out = bsxfun(@plus, outy, 719529);
%  out=bsxfun(@plus,bsxfun(@rdivide, bsxfun(@plus, tunix, localtime(tunix).gmtoff),86400),719529);
  out=out';
endfunction

%%%.gmtoff