function[x]=gaussSeidal(a,b)
    [r,c]=size(a)
    x=zeros(r,1)
    disp(x')
    for i=1:r
        sum=0
        for j=1:r
            if(i<>j) then
                sum=sum+a(i,j)*x(j)
            end
        end
        x(i)=(b(i)-sum)/a(i,i)
    end
    disp(x')
    disp(a*x)
endfunction

a=[4 -1 -1; -2 6 1; -1 1 7]
b=[3; 9; -6]
solution=gaussSeidal(a,b)
disp(solution)
