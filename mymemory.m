function [f] = mymemory(system, n, x)

arraylength = length(n);

nonzeroes = zeros(arraylength);% will be used to record index of non zero values

% checking what n value the impulse occurs at and storing that value
for i = 1:arraylength
    if x(i) ~=0
        nonzeroes(i) = 1; 
    end
end 

y = system(n,x);

test = true;

% checking that output is only a non-zero value where it was before going
% through black box system
for i = 1:arraylength
    if y(i) ~= 0 
        if nonzeroes(i) ~= 1
            test = false;
        end
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
legend('Function Input', 'Function Output')