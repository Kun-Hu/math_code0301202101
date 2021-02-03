clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,26

x=linspace(0,5,200)';
obs_x=[1;2;3;4];
obs_y=[1;4;9;16];

figure;
plot(obs_x,obs_y,'.k','MarkerSize',25);%�۲�

[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-r','linewidth',2);%�������ղ�ֵԤ��
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
legend('���ݵ�','�������ղ�ֵ')
% set(gcf,'Position',[300,500,600,440])%����ͼƬλ�ô�С