clear all; close all;

% Gráfico com todos os profits profits, e faz a regressão linear
file98491 = load("totalsProfit98491.txt");
file98495 = laod("totalsProfit98495.txt");
file98629 = load("totalsProfit98629.txt");

profit98491 = file98491(:,3); 
profit98495 = file98495(:,3);
profit98629 = file98629(:,3); 

x = 1:length(profit);

pp98491 = polyfit(x,profit98491,1);
pp98495 = polyfit(x,profit98495,1);
pp98629 = polyfit(x,profit98629,1);

plot(x, profit98491, 'o');
hold on;
plot(x, profit, 'o');

hold on;
xlabel 'Tarefas'
ylabel 'Profit'
title 'Regressão linear - Profits'

plot(x, polyval(pp, x),'-', "LineWidth", 3);
hold off;