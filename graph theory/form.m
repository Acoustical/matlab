function F=form(D)
    %% �������ͨ��ͼ
    
    %D�������������ڵ��ľ������
    %F��������������ͨ��ͼ��ͳ�Ʋ���
    map=D;
    stack=1:length(map);
    F=zeros(1,length(map));
    NT=1;
    while ~isempty(stack)
        Buff=map(1,:);
        num=(~isinf(Buff));
        stack(num)=[];
        map(num,:)=[];
        map(:,num)=[];
        N=sum(num);
        F(NT)=N;
        NT=NT+1;
    end
    F(F==0)=[];
    F=tabulate(F);
    F(F(:,2)==0,:)=[];
end