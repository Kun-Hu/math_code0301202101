clear;clc;close all;set(0,'defaulttextinterpreter', 'latex')
% author: Kun Hu
% Work unit: Jiangsu Foreign Language School
% last changed: 2021,01,26

%% 1
f= @(x) 1./(1+x.^5);
x=linspace(-5,5,200)';
obs_x=linspace(-5,5,4);%�۲⣬���ݵ�Խ�࣬��������Խ����
obs_y=f(obs_x);

figure;
% plot(obs_x,obs_y,'.k','MarkerSize',25);%�۲�

[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-.k','linewidth',2);%�������ղ�ֵԤ��
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% legend('���ݵ�','�������ղ�ֵ')
set(gca,'Xtick',-5:5)
% set(gca,'Ytick',-2:1.5)

%% 3
hold on;
obs_x=linspace(-5,5,8);%�۲⣬���ݵ�Խ�࣬��������Խ����
obs_y=f(obs_x);
% figure;
% plot(obs_x,obs_y,'.k','MarkerSize',25);%�۲�
[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-+b','linewidth',1);%�������ղ�ֵԤ��
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% legend('���ݵ�','�������ղ�ֵ')
set(gca,'Xtick',-5:5)
% set(gca,'Ytick',-2:1.5)

%% 4
hold on;
obs_x=linspace(-5,5,10);%�۲⣬���ݵ�Խ�࣬��������Խ����
obs_y=f(obs_x);
% figure;
% plot(obs_x,obs_y,'.k','MarkerSize',25);%�۲�
[Y, ~] = lagrange(obs_x,obs_y,x);

hold on;
plot(x,Y,'-m','linewidth',2);%�������ղ�ֵԤ��
xlabel('$x$');ylabel('$y$')
set(gca,'FontSize',12);
% legend('���ݵ�','�������ղ�ֵ')
set(gca,'Xtick',-5:5)
% set(gca,'Ytick',-2:1.5)
legend('n=4','n=8','n=10')


