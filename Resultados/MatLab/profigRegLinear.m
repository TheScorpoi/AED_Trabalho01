clear all; close all;

% Gráfico com todos os profits profits, e faz a regressão linear
file98491 = load("../totalsProfit98491.txt");
file98495 = load("../totalsProfit98495.txt");
file98629 = load("../totalsProfit98629.txt");

profit98491 = file98491(:,3); 
profit98495 = file98495(:,3);
profit98629 = file98629(:,3); 

x = 1:length(profit98491);

pp98491 = polyfit(x,profit98491,1);
pp98495 = polyfit(x,profit98495,1);
pp98629 = polyfit(x,profit98629,1);

plot(x, profit98491, '-o');
hold on;
plot(x, profit98495, '-s');
plot(x, profit98629, '-^');

plot(x, polyval(pp98491, x),'-b', "LineWidth", 2);
plot(x, polyval(pp98495, x),'-r', "LineWidth", 2);
plot(x, polyval(pp98629, x),'-y', "LineWidth", 2);
hold off;

xlabel 'Tarefas'
ylabel 'Profit'
title 'Regressão linear - Profits'
legend ({'98491', '98495', '98629'},'Location', 'northwest', 'FontSize', 14);