function [f,f1,f2] = linearity(system, n, x1, x2)

%additivity
y1 = system(n, x1);
y2 = system(n, x2);

yref = y1 + y2;  % our 'should be' value if the function from the system is actually additive
xtest = x1 + x2;
ytest = system(n, xtest);

%homogeneity
a = rand;

ya = system(n, x1);
yb = system(n, x2);

yref1 = a*ya + a*yb; % our 'should be' value if the function from the system is actually homogenous
xtest1 = a*x1 + a*x2;
ytest1 = system(n, xtest1);

additivity = true;
if round(yref,4) == round(ytest,4)
    f = fprintf('This system is additive.\n');
else
    f = fprintf('This system is not additive.\n');
    additivity = false;
end

homogenous = true;
if round(yref1,4) == round(ytest1,4)
    f1 = fprintf('This system is homogenous.\n');
else
    f1 = fprintf('This system is not homogenous.\n');
    homogenous = false;

end

if additivity == false | homogenous == false
    f2 = fprintf('Therefore, this system is not linear.\n\n');
else
    f2 = fprintf('Therefore, this system is linear.\n\n');
end

% graphing outputs with stem plots
figure
hold on
stem(n,yref)
stem(n,ytest)
title('Additivity Representation')
xlabel('n')
ylabel('f[system]')
legend('Reference Function', 'Tested Function')

figure
hold on
stem(n,yref1)
stem(n,ytest1)
title('Homogeneity Representation')
xlabel('n')
ylabel('f[system]')
legend('Reference Function', 'Tested Function')
end