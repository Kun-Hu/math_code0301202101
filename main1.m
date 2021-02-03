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
plot(obs_x,obs_y,'.k','MarkerSize',25);%�۲�

[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-r','linewidth',2);%�������ղ�ֵԤ��
hold on;
plot(x,y_real,'--b','linewidth',2);%��ʵֵ
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
legend('���ݵ�','�������ղ�ֵ','��ʵֵ')
% set(gcf,'Position',[300,500,600,440])%����ͼƬλ�ô�С






