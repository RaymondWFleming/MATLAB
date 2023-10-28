filename = 'yes1.wav';
[t,Fs] = audioread(filename);
N=length(t);
tdft=fft(t);
[ptt,Ft] = pyulear(t,Fs);

Ft
length(ptt);
length(Ft);
ptt=10*log10(ptt);
for i=1:length(ptt)
    if Ft(i)<.25
        Ft(i);
        ptt(i)=-120;
        ptt(i);

    end
end
Ft;
ptt;
plot(Ft,ptt);
B=findpeaks(ptt);
A=B>-85;
A(A==0)=[];
C=numel(A);
if C>10
    'Input is Yes'
else
    'Input is No'
end
