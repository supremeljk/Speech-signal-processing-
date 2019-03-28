%����ƽ̨��Windows 10 64bit��MATLAB R2017b
%% ¼��¼5����
recObj = audiorecorder(44100,8,1,-1);
disp('Start speaking.')
recordblocking(recObj,5);
disp('End of Recording.');
%�ط�¼������
play(recObj);
% ��ȡ¼������
myRecording = getaudiodata(recObj);
% ����¼�����ݲ���
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
df = fs/length(myRecording1);
fx = df*(0:length(myRecording1)-1);
plot(fx,abs(myRecording1),'r')
axis([0,20000,0,160]);
%plot(abs(fftshift(myRecording1)));
title('��ʼ�ź�Ƶ��');
xlabel('Ƶ��');
ylabel('����');
grid on
%% 3����ȡ
chouqu = decimate(myRecording,3);
chouqu1 = fft(chouqu,length(chouqu));

figure(1)       %���3����ȡ��Ƶ��Ƶ��
%sound(chouqu);
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
%sound(neicha);
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


