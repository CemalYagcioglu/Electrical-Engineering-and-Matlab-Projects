
    % DTMFDIAL Create a signal vector of tones which will dial a
    % DTMF telephone system.
    %
    % usage: PhoneNum = dtmfdial(KeyNames, fs)
    % KeyNames = a vector of characters containing valid key names
    % fs = sampling frequency
    % PhoneNum = signal vector that is the concatenation of DTMF tones
    %
    clear;
    freq = 1477;
    fs = 8000;
    SinWave = [];
    for i=1:1
        f1 = freq;

        t1 = 0:(1/fs):(0.5-0.5/fs);
        t2 = 0:(1/fs):(0.05-0.05/fs);
        new = sin(2*pi*f1*t1);
        SinWave = [SinWave,new];
        SinWave = [SinWave,0.*t2];

    end
    
    PhoneNum = SinWave;
    %sound(PhoneNum,fs)
    
