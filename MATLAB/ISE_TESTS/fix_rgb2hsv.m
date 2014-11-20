function [ h,s,v ] = fix_rgb2hsv( rgb )

sign = 1; % signed
prec_i = 1; % NC
prec_f = 8;  % NU
word = sign + prec_i + prec_f;

r = double(rgb(1))/255;
g = double(rgb(2))/255;
b = double(rgb(3))/255;

r_fix = fi(r,1,word,prec_f,'RoundingMethod','Floor');
g_fix = fi(g,1,word,prec_f,'RoundingMethod','Floor');
b_fix = fi(b,1,word,prec_f,'RoundingMethod','Floor');

max_fix = max([r_fix,g_fix,b_fix]);
min_fix = min([r_fix,g_fix,b_fix]);
diff_fix = max_fix-min_fix;

%% V
v_fix = max_fix;

%% S
if(v_fix == 0)
    s_fix = fi(0,1,word,prec_f,'RoundingMethod','Floor');
else
    s_fix = fi(double(diff_fix)/v_fix,1,word,prec_f,'RoundingMethod','Floor');
end

%% H
sixty_fix = fi(60,1,word,prec_f,'RoundingMethod','Floor');


if(diff_fix == fi(0,1,word,prec_f,'RoundingMethod','Floor'))
    h_fix = fi(0,1,word,prec_f,'RoundingMethod','Floor');
elseif(v_fix == r_fix)
    h_fix = sixty_fix * fi(double(g_fix - b_fix)/diff_fix,1,word,prec_f,'RoundingMethod','Floor');
elseif(v_fix == g_fix)
    h_fix = 2*sixty_fix + sixty_fix * fi(double(b_fix - r_fix)/diff_fix,1,word,prec_f,'RoundingMethod','Floor');
elseif(v_fix == b_fix)
    h_fix = 4*sixty_fix + sixty_fix * fi(double(r_fix - g_fix)/diff_fix,1,word,prec_f,'RoundingMethod','Floor');
else
    error('ERROR!');
end;

if(h_fix < 0)
    h_fix = h_fix + 360;
end;

h_fix = fi(double(h_fix)/(6*sixty_fix),1,word,prec_f,'RoundingMethod','Floor');

h = floor(double(h_fix*255));
s = floor(double(s_fix*255));
v = floor(double(v_fix*255));

end

