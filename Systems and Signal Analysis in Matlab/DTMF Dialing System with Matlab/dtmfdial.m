function PhoneNum = dtmfdial(KeyNames, fs)
    % DTMFDIAL Create a signal vector of tones which will dial a
    % DTMF telephone system.
    %
    % usage: PhoneNum = dtmfdial(KeyNames, fs)
    % KeyNames = a vector of characters containing valid key names
    % fs = sampling frequency
    % PhoneNum = signal vector that is the concatenation of DTMF tones
    %
    dtmf.Keys = ['1', '2', '3';
                 '4', '5', '6';
                 '7', '8', '9';
                 '*', '0', '#'];
    dtmf.colTones = ones(4,1)*[1209, 1336, 1477];
    dtmf.rowTones = [697; 770; 852; 941]*ones(1,3);
    y = [];
    
    for i=1:size(KeyNames,2)
        freqString = {'1209','1336','1477','697','770','852','941'};
        [row,col] = find(dtmf.Keys==KeyNames(i));
        f1 = dtmf.rowTones(row,1);
        
        f2 = dtmf.colTones(1,col);
        t1 = 0:(1/fs):(0.5-0.5/fs);
        t2 = 0:(1/fs):(0.05-0.05/fs);
        new = sin(2*pi*f1*t1)+sin(2*pi*f2*t1);
        y = [y,new];
        y = [y,0.*t2];
        display(f1)
        display(f2)
        %for(c=1:1)
        %    cf = dtmf.colTones(1,c);
        %    subplot(1,2,1)
        %    [acor,lag]=xcorr(y,sin(2*pi*cf*t1));
        %    plot(lag,acor)
        %    s = strcat(KeyNames(1),' vs ',freqString(c),' Correlation');
        %    display(cf)
        %    title(s);
        %end
        for(c=1:3)
            cf = dtmf.colTones(1,c);
            subplot(7,1,c)
            [acor,lag]=xcorr(y,sin(2*pi*cf*t1));
            plot(lag,acor)
            %display(freqString(1))
            s = strcat('Digit:',KeyNames(1),' vs Frequency: ',freqString(c),' Correlation');
            display(cf)
            title(s);
        end
        for(r=1:4)
            kf = dtmf.rowTones(r,1);
            %display(kf)
            subplot(7,1,3+r)
            [acor,lag]=xcorr(y,sin(2*pi*kf*t1));
            plot(lag,acor)
            %display(freqString)
            s = strcat('Digit:',KeyNames(1),' vs Frequency: ',freqString(r+3),' Correlation');
            title(s);

        end
    end
    
    PhoneNum = 0;
    
    %sound(PhoneNum,fs)
    
end

