function [ fixed ] = cfix( nonfixed )
%MFIX Summary of this function goes here
%   Detailed explanation goes here
sign = 1; % signed
prec_i = 7; % NC
prec_f = 2;  % NU
word = sign + prec_i + prec_f;

fixed = fi(nonfixed,sign,word,prec_f,'RoundingMethod','Floor');

end

