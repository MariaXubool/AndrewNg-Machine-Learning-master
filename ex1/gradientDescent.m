function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ===============================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

%===============================MYCODE=====================================
% if computeCost(X, y, theta)~=0
% J = 0;
% h=X*(theta);   %h(x)函数估计值
% delta=h-y;
% muti=(X')*delta;
% delta2=alpha*muti/m;
% theta=theta-delta2;



%dtheta=alpha/m*((X')*(X*theta-y));
%theta=theta-dtheta;

theta=theta-alpha/m*((X')*(X*theta-y));         

% Running Gradient Descent ...
% Theta found by gradient descent:
% -3.630291
% 1.166362
% Expected theta values (approx)
%  -3.6303
%   1.1664
% 
% For population = 35,000, we predict a profit of 4519.767868
% For population = 70,000, we predict a profit of 45342.450129



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%      t1 = theta(1) - alpha * mean(X * theta - y);
%      t2 = theta(2) - alpha * mean((X * theta - y) .* X(:, 2));
%      theta = [t1; t2];

% Theta found by gradient descent:
% -3.878051
% 1.191253
% Expected theta values (approx)
%  -3.6303
%   1.1664
% 
% For population = 35,000, we predict a profit of 2913.325861
% For population = 70,000, we predict a profit of 44607.163473
 
    %======================================================================

    %矩阵维度分不清时可以在演草纸上写m*n,n*m的维度，画一画矩阵的形状



    % =====================================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
