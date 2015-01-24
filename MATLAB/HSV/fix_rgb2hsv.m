function [ h,s,v ] = fix_rgb2hsv( rgb )


r = double(rgb(1))/255;
g = double(rgb(2))/255;
b = double(rgb(3))/255;

r_fix = mfix(r);
g_fix = mfix(g);
b_fix = mfix(b);

max_fix = max([r_fix,g_fix,b_fix]);
min_fix = min([r_fix,g_fix,b_fix]);
diff_fix = mfix(max_fix-min_fix);

%% V
v_fix = max_fix;

%% S
if(v_fix == 0)
    s_fix = mfix(0);
else
    s_fix = mfix(double(diff_fix)/v_fix);
end

%% H
sixty_fix = mfix(60);

if(diff_fix == mfix(0))
    h_fix = mfix(0);
elseif(v_fix == r_fix)
    sub_value = mfix(double(mfix(g_fix - b_fix)));
    sub_diff = mfix(double(sub_value)/double(diff_fix));
    multed_h = double(sub_diff) * 60;
    h_360 = multed_h;
    h_fix = h_360;   
elseif(v_fix == g_fix)
    sub_value = mfix(double(mfix(b_fix - r_fix)));
    sub_diff = mfix(double(sub_value)/double(diff_fix));
    multed_h = double(sub_diff) * 60;
    h_360 = multed_h + 120;
    h_fix = h_360;    
elseif(v_fix == b_fix)
    sub_value = mfix(double(mfix(r_fix - g_fix)));
    sub_diff = mfix(double(sub_value)/double(diff_fix));
    multed_h = double(sub_diff) * 60;
    h_360 = multed_h + 240;
    h_fix = h_360;
else
    error('ERROR!');
end;

if(h_fix < 0)
    h_fix = h_fix + 360;
end;

h_fix = mfix(h_fix/360);

h = floor(double(h_fix*255));
s = floor(double(s_fix*255));
v = floor(double(v_fix*255));

end

