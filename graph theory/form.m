function F=form(D)
    %% 求最大连通子图
    
    %D——————节点间的距离矩阵
    %F——————连通子图的统计布局
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