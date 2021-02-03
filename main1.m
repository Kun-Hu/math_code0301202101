clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,26

f= @(x) sin(x);
x=linspace(0,2*pi,200)';
y_real=f(x);
obs_x=[0;pi/2;pi;3*pi/2;2*pi];
obs_y=f(obs_x);

figure;
plot(obs_x,obs_y,'.k','MarkerSize',25);%观测

[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-r','linewidth',2);%拉格朗日插值预报
hold on;
plot(x,y_real,'--b','linewidth',2);%真实值
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
legend('数据点','拉格朗日插值','真实值')
% set(gcf,'Position',[300,500,600,440])%调整图片位置大小






