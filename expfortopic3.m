[myRecording,] = audioread('C:\Users\supreme ljk\Desktop\Lessin.mp3');

%sound(myRecording,44100);

n = length(myRecording);
myRecording1 = fft(myRecording,n);
%% ��ͼ��ʾʱ����Ƶ��
figure(1)
subplot(3,2,1);
fs = 44100;
time = (1/fs)*length(myRecording);
t = linspace(0,time,length(myRecording));
plot(t,myRecording); 
xlabel('ʱ��');
ylabel('����');
title('��ʼ�źŲ���');   %���ʱ��
grid on

figure(1)       %���Ƶ��Ƶ��
subplot(3,2,2);
plot(abs(fftshift(myRecording1)));
title('��ʼ�ź�Ƶ��');
xlabel('Ƶ��');
ylabel('����');
grid on
%% 3����ȡ
chouqu = downsample(myRecording,3);
chouqu1 = fft(chouqu,length(chouqu));

figure(1)       %���3����ȡ��Ƶ��Ƶ��

%sound(chouqu,44100);

subplot(3,2,3);
fs1 = 44100;
time1 = (1/fs1)*length(chouqu);
t1 = linspace(0,time1,length(chouqu));
plot(t1,chouqu);
title('3����ȡ�Ժ���ź�ʱ��');
xlabel('ʱ��');
ylabel('����');
grid on;

subplot(3,2,4);
plot(abs(fftshift(chouqu1)));
title('3����ȡ�Ժ���ź�Ƶ��');
xlabel('Ƶ��');
ylabel('����');
grid on
%% 3���ڲ�
neicha = interp(myRecording,3);
neicha1 = fft(neicha,length(neicha));

figure(1)       %���3���ڲ��Ƶ��Ƶ��

%sound(neicha,44100);

subplot(3,2,5);
fs2 = 44100;
time2 = (1/fs2)*length(neicha);
t2 = linspace(0,time2,length(neicha));
plot(t2,neicha);
title('3���ڲ��Ժ���ź�ʱ��');
xlabel('ʱ��');
ylabel('����');
grid on;

subplot(3,2,6);
plot(abs(fftshift(neicha1)));
title('3���ڲ��Ժ���ź�Ƶ��');
xlabel('Ƶ��');
ylabel('����');
grid on
