function [f] = timeinvarience(system, n, x1)

arraylength = length(n);

% first output
y1 = system(n,x1);

% shifting n values 
for i = 1:arraylength
    n(i)= n(i)+5;
end 

% second output using shifted n values
y2 = system(n,x1);


test = true;

% checks that y1 and y2 are equal despite time shift 
for i = 1:arraylength
    if test == true
        if y1(i) ~= y2(i)
            test = false;
        end
    end
end

if test == false
    f = fprintf('This system is time-varying. \n\n');
else 
    f = fprintf('This system is time invarient. \n\n');
end

figure
hold on
stem(n,y1)
stem(n+5,y2)
title('Time-Invariance Representation')
xlabel('n')
ylabel('f[system]')
legend('Original Output', 'Time Shifted Output')


