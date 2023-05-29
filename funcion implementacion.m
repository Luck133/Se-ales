
N=100;
n = -N:N;
x = 1*(n==0);
figure, stem(n,x);

y = zeros(size(x));

for k = 1:N

          if (k == 1) || (k==2)
               y(k)=1*x(k);
          else
              if   k == 3
                 y(k)= 1*x(k)+(0.35)*x(k-2);
              else
                  if   k == 4
                     y(k)= 1*x(k)+(0.35)*x(k-2)+(-0.2)*x(k-3);
                  else
                      if   k==6
                       y(k)= 1*x(k)+(0.35)*x(k-2)+(-0.2)*x(k-3)+(-0.1)*x(k-5);
                      else
                          if   k>=7
                           y(k)= 1*x(k)+(0.35)*x(k-3)+(-0.2)*x(k-4)+(-0.1)*x(k-5)+(-0.05)*x(k-6);
                          end
                      end 
                  end   
              end
          end   
          
 end        

          stem(y)