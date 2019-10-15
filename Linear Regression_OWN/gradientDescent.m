
 function [theta, J_history] = gradientDescent(theta,X,y);
  
  
  m = length(y);
  
  J_history = zeros(1000, 1);
  
  
  for i = 1:10000
    
    h_x = X * theta;
    
    
    delta = X' * (h_x - y);
    
    theta -= (0.01) * (1/m) * delta; 
    
    J_history(i) = costFunction(h_x, y);
    
    
  endfor
  
  
endfunction
