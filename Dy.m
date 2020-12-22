function d = Dy(u)
[rows,cols,dim] = size(u); 
d = zeros(rows,cols);
d(2:rows,:,dim) = u(2:rows,:,dim)-u(1:rows-1,:,dim);
d(1,:,dim) = u(1,:,dim)-u(rows,:,dim);
end