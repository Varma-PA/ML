

function J = costFunction(h_x, y)
  
  m = length(y);
  
  delta = h_x - y;
  
  J = (1/2*m) * (delta' * delta);
  
  
endfunction
