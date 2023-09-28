function [f] = causality(system, n, x1)

arraylength = length(n);

% checking what n value the impulse occurs at and storing that value
for i = 1:arraylength
    if x1(i) ~=0
        impulse = n(i); 
    end
end 

y1 = system(n,x1);

test = true;

% checking that a non-zero value only occurs after the impulse occurs
for i = 1:arraylength
    value = y1(i);
    if value ~=0 && n(i) < impulse
        test = false;
    end
end

if test == false
    f = fprintf('This system is non-causal. \n\n');
else 
    f = fprintf('This system is causal. \n\n');
end

figure
hold on
stem(n,x1)
stem(n,y1)
title('Causality Representation')
xlabel('n')
ylabel('f[system]')
legend('Impulse', 'Function Output')


