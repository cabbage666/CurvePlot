clear;
clc;
close all;

%%%%%%%%%%%%%%��ȡtxt�ļ��е�����
textname = 'data.txt';
[data1,data2] = textread(textname,'%n%n');

%%%%%%%%%%%%%%�������ݵ�ɢ��ͼ
xcor = data1;
ycor = data2;
BaseM=ones(100,1);
rad=10;   % ɢ��İ뾶
radM = BaseM*rad;
scatter(xcor,ycor,rad,'k','filled');
axis([-0.2 1.2 -10 60]);
hold on;
 
%%%%%%%%ʵ��ͼ����
a1=1;
b1=2;
c1=1;
x1 = 0:0.01:1;
y1 =exp( a1* x1.^2 + b1*x1.^1 +c1 );
plot(x1,y1,'-r');

%%%%%%%%��װ���ͼ����
a2=0.8919;
b2=2.1703;
c2=0.9441;
x2 = 0:0.01:1;
y2 =exp( a2* x2.^2 + b2*x2.^1 +c2 );
plot(x2,y2,'.g');
legend('�������ݵ�','��ʵģ��','����ģ��','location','NorthWest'); 