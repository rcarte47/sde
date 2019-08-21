function Ex = findex(X, bound)
na=size(bound,1);
Ex=zeros(1,na);
for j=1:na
  compare=X>=bound(j,:);
  index=find(compare,1,'first');
  if index>=1
   Ex(j)=X(index);
   else Ex(j)=0;
  end
end 
end

% if index>=1
%  Ex=X(index);
% else Ex=0;
% end
% 
% 
% for j=1:na
%   for i =1:iter
%    Ex3(i,j)=findex(X(i,:),bound3(j,:));
%   end
%  end



% nx=length(x);
% 
% parfor i = nx
%  a(i)=x(i)>bound;
% end
% Ex=sum(a)/length(x);
