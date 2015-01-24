function [ fixed ] = mfix( nonfixed )
%
sign = 1; % signed
prec_i = 1; % NC
prec_f = 8;  % NU
word = sign + prec_i + prec_f;

fixed = fi(nonfixed,sign,word,prec_f,'RoundingMethod','Floor');
end

