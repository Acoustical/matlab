function [D,C,aver_D]=Distance_F(A)
    %% 采用Floyd算法计算任意两节点的距离,并求最短路径条数用于计算介数
    
    % A—————网络图的邻接矩阵,亦可以是赋权图
    % D—————网络的距离矩阵
    % C—————节点间最短路径条数
    % aver_D—————网络的平均路径长度
    N=size(A,2);
    D=A;
    C=A;
    C((C==inf))=0;
    C((C~=0))=1;
    D((D==0))=inf;
    for i=1:N          
        D(i,i)=0;
    end
    for k=1:N
        for i=1:N
            for j=1:N
                if D(i,j)>D(i,k)+D(k,j)
                    D(i,j)=D(i,k)+D(k,j);
                    C(i,j)=C(i,k)*C(k,j);
                elseif D(i,j)==D(i,k)+D(k,j)
                    if k~=i&&k~=j
                        C(i,j)=C(i,j)+C(i,k)*C(k,j);
                    end
                end
            end
        end
    end
    aver_D=sum(sum(D))/(N*(N-1));
    % if aver_D==inf
    %    disp('该网络图不是连通图');
    % end
end