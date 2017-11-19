
    KeyNames = ['9','1','9','8','9','7','2','4','3','5'];
    fs = 8000;
    dtmf.Keys = ['1', '2', '3';
                 '4', '5', '6';
                 '7', '8', '9';
                 '*', '0', '#'];
    dtmf.colTones = ones(4,1)*[1209, 1336, 1477];
    dtmf.rowTones = [697; 770; 852; 941]*ones(1,3);
    y = [];
    for i=1:size(KeyNames,2)
        [row,col] = find(dtmf.Keys==KeyNames(i));
        f1 = dtmf.rowTones(row,1);
        
        f2 = dtmf.colTones(1,col);
        t1 = 0:(1/fs):(0.5-0.5/fs);
        t2 = 0:(1/fs):(0.05-0.05/fs);
        new = sin(2*pi*f1*t1)+sin(2*pi*f2*t1);
        y = [y,new];
        y = [y,0.*t2];

    end
    
    PhoneNum = y;
    %%sound(PhoneNum,fs)
    

