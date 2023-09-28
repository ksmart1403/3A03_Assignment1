function [f] = mymemory(system, n, x)

arraylength = length(n);

% checking what n value the impulse occurs at and storing that value
for i = 1:arraylength
    if x(i) ~=0
        impulse = n(i); 
    end
end 

y = system(n,x);

test = true;

%checking if the output is non-zero at somewhere other than the impulse -
%showsing memory
for i = 1:arraylength
    value = y(i);
    if value ~= impulse && value ~= 0
        test = false;
    end
end

if test == false
    f = fprintf('This system has memory.\n\n');
else 
    f = fprintf('This system is memoryless.\n\n');
end

figure
hold on
stem(n,x)
stem(n,y)
title('Memory Representation')
xlabel('n')
ylabel('f[system]')
legend('Impulse', 'Function Output')