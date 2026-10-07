%% Task 1
clear; clc;

A = [2 1 -1; -3 -1 2; -2 1 2];
b = [8; -11; -3];

x = A \ b;

verf = A*x - b;

disp('x = ')
disp(x)

disp("Verification (A*x -b) = ")
disp(verf)

%% Task 2

t = 0:0.1:15;
y = exp(-0.3*t).*cos(2*t);
postive_env = +exp(-0.3*t);
negative_env = -exp(-0.3*t);


figure;
plot(t, y, 'b-', 'LineWidth', 1.5);
hold on;
plot(t, postive_env, 'r--', 'LineWidth', 1.5);
plot(t, negative_env, 'g-', 'LineWidth', 1.5);
hold off; 

title('Task 2 Plot')
xlabel('Time (s)');
ylabel('Amplitude');
legend('y = exp(-0.3t).cos(2t)', '+exp(-0.3*t)', '-exp(-0.3*t)');
grid on;

%% Task 3

loop_sum = 0;

for i = 1:100
    loop_sum = loop_sum + i^2;
end

verfication = sum((1:100).^2);

fprintf('Sum of squares using for loop: %d\n', loop_sum);
fprintf('Sum of squares using sum((1:100).^2): %d\n', verfication);

