function [train, test] = split2train_test(input,proportion)

rows=size(input,1);
%split=cvpartition(1:rows,'holdout',0.1);
split=randindex(rows,proportion);
train=input(split==0,:);
test=input(split==1,:);

end

function randindex=randindex(n,proportion)
    randindex=zeros(n,1);
    for i=1:n
       if rand(1)>proportion
           randindex(i)=1;
       end
    end
end