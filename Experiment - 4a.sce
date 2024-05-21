function[x]=gaussElimination(A,b)
    n=length(b)
    disp([A,b])
    A1=A
    b1=b
    for i=1;n-1
        m1=A(i,i)
        A(i,:)=A(i,:)/m1
        b(i)=b(i)/m1
        for j=i+1:n
            m2=A(j,i)
            A(j,:)=A(j,:)-m2*A(i,:)
            b(j)=b(j)-m2*b(i)
        end
        disp([A,b])
    end
    x=zeros(n,1)
    for i=n:-1:1
        s=0
        for j=i+1:n
            s=s+A(i,j)*x(j)
        end
        x(i,1)=(b(i)-s)/A(i,i)
    end
    disp(x)
    disp([A1*x])
endfunction

A=[2 1 1; 3 2 3; 1 4 9]
b=[10; 18; 16]
gaussElimination(A,b)
