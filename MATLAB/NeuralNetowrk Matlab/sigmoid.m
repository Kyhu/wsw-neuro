function [sigmoid_cluster]= sigmoid(a,b,step,k)

z=(a:step:b);
l_z=length(z);
lut_sigma(l_z)=0;
tmp(l_z)=0;
tmp=(1+exp(k*z));           %zmienna tymczasowa do stworzenia funckji

for j=1:l_z;
lut_sigma(j)=1/tmp(j);
end

 sigmoid_cluster=[l_z,z,lut_sigma,step];
end
