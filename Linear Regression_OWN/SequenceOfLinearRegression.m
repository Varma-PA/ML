

disp('========================================================');

disp('Hi Achyuth, Welcome to your Linear Regression Algorithm');


##disp('========================================================');


##disp("Let's Test a small program now");
##
##input1 = input("Squaring a number: ");
##
##squareThisNumber(input1)




disp('========================================================');

disp("The Matrix that I've defined");


myData = LoadingData;


disp('========================================================');

pause;

disp('========================================================');

disp("Plotting The Data");

x = myData(:,1); 

y = myData(:,2);

figure(1) ; plot(x, y, 'rx');

xlabel("x");
ylabel("Target");

title("Plotted The Data");

legend('X');

hold on;

disp('========================================================');

##disp("Now let's make a hypothesis function");
##
theta = [zeros(2,1)];
##
###Adding One to first column
X = [ones(length(x),1), x];
##
##h_x = HypothesisFunction(theta, X);
##
##figure(1) ; plot(h_x);
##
##pause;
##
##disp('========================================================');


disp("Let's calculate the initial cost function");

h_x = X * theta;

J = costFunction(h_x, y)


disp('========================================================');

disp("Let's apply at Gradient Descent Algorithm");

[theta, J_history] = gradientDescent(theta, X, y);

theta

figure(2) ; plot(J_history);

xlabel('Iterations');

ylabel('J');

title('CostFunction');

disp('========================================================');


new_h_x = X * theta;

figure(1) ; plot(x,new_h_x, 'b');

xlabel('x');

ylabel('h_x');

title('Linear Regression');

disp('========================================================');
