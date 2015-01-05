function [ fixed ] = vfix( nonfixed )
%Fixing one value
sign = 1; % signed
prec_i = 8; % NC
prec_f = 16;  % NU
word = sign + prec_i + prec_f;

fixed = fi(nonfixed,sign,word,prec_f,'RoundingMethod','Floor');

end

