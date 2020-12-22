function d = Dx(u)
[rows,cols,dim] = size(u); 
d = zeros(rows,cols,dim);
d(:,2:cols,dim) = u(:,2:cols,dim)-u(:,1:cols-1,dim);
d(:,1,dim) = u(:,1,dim)-u(:,cols,dim);
end
