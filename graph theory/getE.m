function E=getE(D)
    %% ��ͼ��Ч��
    
    %D�����������������нڵ��ľ������
    %E������������ͼ��Ч��
    
    EX=1./D;
    EX(isinf(EX))=0;
    E=sum(sum(EX))/length(D)/(length(D)-1);
end