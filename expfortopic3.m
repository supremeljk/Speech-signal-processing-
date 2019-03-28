[myRecording,] = audioread('C:\Users\supreme ljk\Desktop\Lessin.mp3');

%sound(myRecording,44100);

n = length(myRecording);
myRecording1 = fft(myRecording,n);
%% 画图显示时域与频域
figure(1)
subplot(3,2,1);
fs = 44100;
time = (1/fs)*length(myRecording);
t = linspace(0,time,length(myRecording));
plot(t,myRecording); 
xlabel('时间');
ylabel('幅度');
title('初始信号波形');   %绘出时域波
grid on

figure(1)       %绘出频域频谱
subplot(3,2,2);
plot(abs(fftshift(myRecording1)));
title('初始信号频谱');
xlabel('频率');
ylabel('幅度');
grid on
%% 3倍抽取
chouqu = downsample(myRecording,3);
chouqu1 = fft(chouqu,length(chouqu));

figure(1)       %绘出3倍抽取的频域频谱

%sound(chouqu,44100);

subplot(3,2,3);
fs1 = 44100;
time1 = (1/fs1)*length(chouqu);
t1 = linspace(0,time1,length(chouqu));
plot(t1,chouqu);
title('3倍抽取以后的信号时域');
xlabel('时间');
ylabel('幅度');
grid on;

subplot(3,2,4);
plot(abs(fftshift(chouqu1)));
title('3倍抽取以后的信号频谱');
xlabel('频率');
ylabel('幅度');
grid on
%% 3倍内插
neicha = interp(myRecording,3);
neicha1 = fft(neicha,length(neicha));

figure(1)       %绘出3倍内插的频域频谱

%sound(neicha,44100);

subplot(3,2,5);
fs2 = 44100;
time2 = (1/fs2)*length(neicha);
t2 = linspace(0,time2,length(neicha));
plot(t2,neicha);
title('3倍内插以后的信号时域');
xlabel('时间');
ylabel('幅度');
grid on;

subplot(3,2,6);
plot(abs(fftshift(neicha1)));
title('3倍内插以后的信号频谱');
xlabel('频率');
ylabel('幅度');
grid on
