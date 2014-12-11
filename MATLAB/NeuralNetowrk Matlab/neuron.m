function [y] = neuron(n,x,w,bias,function_cluster)
% n-iloœæ wejœæ; x-wejœcia; w-wagi; bias-przesuniêcie; function cluster-funkcja przejœcia!

%z-oœ x do lut sigma
%step- krok do funkcji przejœcia
%lut_sigma -tablica LUT funckji sigmoidalnej

sum=bias;
for i=1:n
sum=sum+x(i)*w(i)
end
%% funkcja skokowa
% if y> f
% y=1;
% else
% y=0;
% end

l_z=function_cluster(1);
z(l_z)=0;
z=function_cluster(2:l_z+1);
lut_sigma(l_z)=0;
lut_sigma=function_cluster(l_z+2:2*l_z+1);
l_f=length(function_cluster);
step=function_cluster(l_f);


if sum>max(z)
    y=1;
else
    if sum<min(z);
    y=0;
    else                    
    y=lut_sigma(round(1/step*sum)) %zwraca y jako wartoœæ funkcji sigmoidalnej dla argumentu który jest sum¹ wag i pobudzeñ neuronu
    end
end

end