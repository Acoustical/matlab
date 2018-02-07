function E=getE(D)
    %% 求图的效率
    
    %D——————网络中节点间的距离矩阵
    %E——————图的效率
    
    EX=1./D;
    EX(isinf(EX))=0;
    E=sum(sum(EX))/length(D)/(length(D)-1);
end