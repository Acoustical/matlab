function [D,C,aver_D]=Distance_F(A)
    %% ����Floyd�㷨�����������ڵ�ľ���,�������·���������ڼ������
    
    % A��������������ͼ���ڽӾ���,������Ǹ�Ȩͼ
    % D��������������ľ������
    % C�����������ڵ�����·������
    % aver_D���������������ƽ��·������
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
    %    disp('������ͼ������ͨͼ');
    % end
end