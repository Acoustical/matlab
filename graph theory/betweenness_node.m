function B=betweenness_node(A,a)
    %%������ڵ����

    % A�������������ڽӾ���������Ǹ�Ȩͼ
    % a==0Ϊ�������磻a==1Ϊ�������磻
    % B���������ڵ����

    N=size(A,1);
    B=zeros(1,N);
    [D,C,~]=Distance_F(A);

    if a==0
        for k=1:N
            for i=1:N
                if i~=k              
                    for j=i+1:N        
                        if j~=k
                            if D(i,j)==D(i,k)+D(k,j)&&C(i,j)~=0
                                B(k)=B(k)+C(i,k)*C(k,j)/C(i,j);
                            end
                        end
                    end
                end
            end
        end
    else
        for k=1:N
            for i=1:N
                if i~=k
                    for j=1:N
                        if j~=k
                            if D(i,j)==D(i,k)+D(k,j)&&C(i,j)~=0
                                B(k)=B(k)+C(i,k)*C(k,j)/C(i,j);
                            end
                        end
                    end
                end
            end
        end
    end
end