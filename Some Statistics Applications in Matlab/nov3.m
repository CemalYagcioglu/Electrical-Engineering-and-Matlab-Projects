counter=0
for i=1:8
    for k=1:8
        counter=counter+1
        A=((i==1)*BDF+(i==2)*DA+(i==3)*IA+(i==4)*L+...
            (i==5)*Q100+(i==6)*RI22+(i==7)*RQ100+(i==8)*S)
        B=((k==1)*BDF+(k==2)*DA+(k==3)*IA+(k==4)*L+...
            (k==5)*Q100+(k==6)*RI22+(k==7)*RQ100+(k==8)*S)
        if k~=i
    figure(counter)
       plot(A,B)
       b=sprintf('i=%f k=%f',i,k)
       title(b)
        end
    end
end