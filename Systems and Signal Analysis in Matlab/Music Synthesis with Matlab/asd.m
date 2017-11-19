%clearing variables & screen
clear

%frequency
fs = 8000;

%durations
w = 1;
h = 0.5;
q = 0.25;
e = 0.125;
res = 0.01;

clear piano2notes;
%notes


lD = 220*2^((13-8)/12); %D4
lDs = 220*2^((14-8)/12);
lE = 220*2^((15-8)/12);
lF = 220*2^((16-8)/12);
lFs = 220*2^((17-8)/12);
lG = 220*2^((18-8)/12);
lGs = 220*2^((19-8)/12);
A = 220*2^((20-8)/12);
As = 220*2^((21-8)/12);
B = 220*2^((22-8)/12);
C = 220*2^((23-8)/12);
Cs = 220*2^((24-8)/12);
D = 220*2^((25-8)/12);
Ds = 220*2^((26-8)/12);
E = 220*2^((27-8)/12);
F = 220*2^((28-8)/12);
Fs = 220*2^((29-8)/12);
G = 220*2^((30-8)/12);
Gs = 220*2^((31-8)/12);
hA = 220*2^((32-8)/12);
hAs = 220*2^((33-8)/12);
hB = 220*2^((34-8)/12);
hBs = 220*2^((35-8)/12);

listNotes = [lD lDs lE lF lFs lG lGs ...
             A As B C Cs D Ds E F Fs G Gs ...
             hA hAs hB hBs];
         %starts with lE
%notes starts from A2 to E4
A2 = 220*2^(-12/12);
A2s = 220*2^(-11/12);
B2 = 220*2^(-10/12);
C3 = 220*2^(-9/12);
C3s = 220*2^(-8/12);
D3 = 220*2^(-7/12);
D3s = 220*2^(-6/12);
E3 = 220*2^(-5/12);
F3 = 220*2^(-4/12);
F3s = 220*2^(-3/12);
G3 = 220*2^(-2/12);
G3s = 220*2^(-1/12);
A3 = 220*2^(-0/12);
A3s = 220*2^(1/12);
B3 = 220*2^(2/12);
C4 = 220*2^(3/12);
C4s = 220*2^(4/12);
D4 = 220*2^(5/12);
D4s = 220*2^(6/12);
E4 = 220*2^(7/12);
         
         
         
         
%%%pauses only 1/8 is used in sheet
p = 1; %frequency doesnt matter as amp is 0

% ADD SHIFT FACTOR SIGNATURE KEYS

piano1notes = [A D F D Cs D E ... 
               D B C D A ... %1
               lG lF lE A ...
               lD ...
               A D F ...
               hA F ...
               E F G ...
               F ...
               B C D A B C ... %2
               lG lF ...
               lG lF lE A...
               lD lD p ...
               hA hA ...
               hB hA ...
               p G Fs G ...
               hA G Fs hA G p... %3
               G G...
               hA G ...
               p F E F...
               G F E G F p...
               E E ...
               G F E ...
               E D Cs D ... % 4
               E D Cs E D p ...
               hA p p A...
               B Cs...
               D D Cs D...
               E D Cs E D p...
               hB hA ...
               D p];
               
               
               
               
               
               
               
               
%%%for simultaneous notes
piano1lower = zeros(1,size(piano1notes,2));
piano1lower2 = zeros(1,size(piano1notes,2));
piano1lower(42) = C;
piano1lower(43) = C;
piano1lower(44) = D;
piano1lower(45) = C;
piano1lower(56) = B;
piano1lower(57) = B;
piano1lower(58) = C;
piano1lower(59) = B;
piano1lower(70) = lG;
piano1lower(71) = lG;
piano1lower(72) = B;
piano1lower(73) = A;
piano1lower(74) = lG;
piano1lower(75) = lG;
piano1lower(76) = B; 

piano1lower(103) = A;
piano1lower(101) = G;
piano1lower(102) = E;

piano1lower2(101) = D;
piano1lower2(102) = Cs;
piano1lower2(103) = lF;

%Piano1durations
piano1dur = [h+q q...
             h+q q...
             h+q e e...
             w...
             h+q e e...
             w...%1
             q q q+e e...
             w...
             h+q e e...
             h+q q...
             h+q e e...
             w...
             e e q e e q...%2
             h+q q...
             q q q+e e...
             h q q...
             h h...
             h+q q...
             q h e e...
             e e e e q q... %3
             h h...
             h+q q...
             q h e e ...
             e e e e q q ...
             h h ...
             q h q ...
             q h e e ...%4
             e e e e q q...
             q q q+e e...
             h h...
             q h e e...
             e e e e q q...
             h h...
             h+q q];
         
%Piano2notes
piano2notes= [F3 B3 G3 B3... %a
              F3 B3 G3 B3...
              F3 C4 A3 C4...
              F3 B3 G3 B3...
              F3 C4 A3 C4...
              F3 B3 G3 B3...%1
              D3s B3 F3 B3...
              F3 B3 G3 B3...
              F3 B3 G3 B3...
              F3 B3 G3 B3...
              F3 C4 A3 C4...
              F3 B3 G3 B3...
              C4 B3...%2
              A3 G3...
              A3...
              E3 B3 E3 p...
              Ds E4 B3 E4...
              Ds E4 B3 E4...
              E E4 C4 E4... A3 E4 C4 E4
              A3 E4 C4 E4...%3
              F3 D4 A3 D4... F3 D4 A3 D4
              F3 D4 A3 D4...
              G3 D4 B3 D4...
              G3 D4 B3 D4...
              D3s B3 F3 B3...
              D3s B3 F3 B3...
              C3 G3 E3 G3...%4
              C3 G3 E3 G3...
              F3 p p B2...
              C3s D3s...
              E3 B3 p...
              C4 B3 p...
              A2 B2...
              E3 p];
   
tnotes = [p p p p p];
tdur = [h h w q h];

              
              
                       
piano2lower = zeros(1,size(piano2notes,2));
piano2lower2 = zeros(1,size(piano2notes,2));

piano2lower(49) = E3;
piano2lower(50) = D3; %2
piano2lower(51) = C3;
piano2lower(52) = B2;
piano2lower(53) = B2;
piano2lower(55) = G3;
piano2lower(106) = B2;
piano2lower(113) = G3;
piano2lower(115) = A3;
piano2lower(116) = G3;

piano2lower2(113) = E3;
piano2lower2(115) = E3;
piano2lower2(116) = E3;
             
%piano2durations
piano2dur = [q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...%1
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             h h... %2
             h h...
             w...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...%3
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q...
             q q q q... %4
             q q q q...
             q q q+e e...
             h h...
             q h q...
             h q q...
             h h...
             h+q q];

%%F major scale for piano1 and considering the natural signs.
for c=1:size(piano1notes,2)
    if ((piano1notes(c))==(B) && c~=89)
        piano1notes(c)=As;
    end
    if (piano1lower(c))==(B)
        piano1lower(c)=As;
    end
    if (piano1lower2(c))==(B)
        piano1lower2(c)=As;
    end
end
% Adjusting treble scale to bass scale
%{
for k=1:size(piano2notes,2)
    if (piano2notes(k)~=1)
        %disp(bassnotes(find(piano2notes(k)==listNotes)))
        piano2notes(k) = (2^(-11/12))*bassnotes(find((piano2notes(k))==(listNotes)));
    end
    if (~isempty(bassnotes(find((piano2lower(k))==(listNotes)))))
    piano2lower(k) = (2^(-11/12))*bassnotes(find((piano2lower(k))==(listNotes)));
    end
    
    if (~isempty(bassnotes(find((piano2lower2(k))==(listNotes)))))
    piano2lower2(k) = (2^(-11/12))*bassnotes(find((piano2lower2(k))==(listNotes)));
    end
end
%}
for o=1:size(piano2notes,2)
    if (piano2notes(o) == F3 && o~=89)
        piano2notes(o) = F3s;
    end
    if (piano2lower(o) == F3)
        piano2lower(o) = F3s;
    end
    if (piano2lower2(o) == F3)
        piano2lower2(o) = F3s;
    end
end 

piano2notes = piano2notes.*2^(-6/12);
y1 = [];
yl1 = [];
yl2 = [];
y2 = [];
y2l1 = [];
y2l2 = [];
%x =

%ADSR limit ratios
at = 0.15;
dc = 0.30;
st = 0.70;
rl = 1.00;

sustainAmp = 0.70;
 for i = 1:(size(piano1dur,2))
     clear A;
     
     u = (piano1dur(i)-piano1dur(i)/fs);
     t1 = 0:(1/fs):u;
     x = exp((-1)*t1);
    %if i==1
    %     g = cos(2*pi*notes(i)*t1);
    %     t = t1;
    %     g = g/max(g(:));
    %end
    %    tn = t1/max(t1(:));
    counter = 1;
    maxt = max(t1);
    ati = t1(t1<at*u);
    dci = t1(t1>=at*u & t1<dc*u);
    sti = t1(t1>=dc*u & t1<st*u);
    rli = t1(t1>=st.*u);
    
    ATV = [];
    DCV = [];
    STV = [];
    RLV = [];
    ATV = [(1/(max(ati)-min(ati))).*(ati-1/fs)];
    DCV = [1.00+((sustainAmp-1.00)./(max(dci)-max(ati)).*(dci-max(ati)))];
    STV = [ones(1,size(sti,2)).*sustainAmp];
    RLV = [0.7+((0-sustainAmp)./(max(t1)-max(sti))).*(rli-max(sti))];
    
    atl = size(ATV,2);
    dcl = size(DCV,2);
    stl = size(STV,2);
    rlv = size(RLV,2);
    
    A(1:atl) = ATV;
    A((atl+1):(atl+dcl)) = DCV;
    A((atl+dcl+1):(atl+dcl+stl)) = STV;
    A((atl+dcl+stl+1):(atl+dcl+stl+rlv)) = RLV;
    
    
    if piano1notes(i)==1
        y1 = [y1,0*t1];
    else

        y1 = [y1,A.*x.*cos(2*pi*piano1notes(i)*t1)];
    end
    
    if piano1lower(i)==0 || piano1lower(i)==0
        yl1 = [yl1,0*t1];
    else
        counter = counter+1;
        yl1 = [yl1,A.*x.*cos(2*pi*piano1lower(i)*t1)];
    end
    
    if piano1lower2(i)==1 || piano1lower2(i)==0
        yl2 = [yl2,0*t1];
    else
        counter = counter+1;
        yl2 = [yl2,A.*x.*cos(2*pi*piano1lower2(i)*t1)];
    end
    y1(i)=y1(i)./counter;
    yl1(i)=yl1(i)./counter;
    yl2(i)=yl2(i)./counter;
    if i==1
       plot(t1,y1)
    end
 end
 disp(ati)
 y1 = y1 + yl1 + yl2;
 y1 = y1/max(y1(:));
 %sound(y,fs)

  for i = 1:(size(piano2dur,2))
     clear A;
     
     u = (piano2dur(i)-piano2dur(i)/fs);
     t1 = 0:(1/fs):u;
     x = exp((-1)*t1);
    %if i==1
    %     g = cos(2*pi*notes(i)*t1);
    %     t = t1;
    %     g = g/max(g(:));
    %end
    %    tn = t1/max(t1(:));
    counter = 1;

    

    
   
    
    if piano2notes(i)==1
        y2 = [y2,0*t1];
    else

        y2 = [y2,cos(2*pi*piano2notes(i)*t1)];
    end
    
    if piano2lower(i)==0 || piano2lower(i)==0
        y2l1 = [y2l1,0*t1];
    else
        counter = counter+1;
        y2l1 = [y2l1,(2*pi*piano2lower(i)*t1)];
    end
    
    if piano2lower2(i)==1 || piano2lower2(i)==0
        y2l2 = [y2l2,0*t1];
    else
        counter = counter+1;
        y2l2 = [y2l2,cos(2*pi*piano2lower2(i)*t1)];
    end
    y2(i)=y2(i)./counter;
    y2l1(i)=y2l1(i)./counter;
    y2l2(i)=y2l2(i)./counter;

  end

 
 y2 = y2 + y2l1 + y2l2;
 y2 = y2/max(y2(:));
 disp(piano2notes(1:10))
 y2 = y2*2;
 y = y2 + y1/3;
 sound(y2(1:50000),fs) 
 %{
tnotes = [p p p p p 0 p];
tdur = [h h w q h w h];


 for i = 1:size(tdur,2)
     

         
     t1 = 0:(1/fs):(tdur(i)-tdur(i)/fs);
     x = exp(-3*t1);

    counter = 1;
    if tnotes(i)==1 || tnotes(i)==0
        y1 = [y1,0*t1];
    else
        y1 = [y1,x.*cos(2*pi*tnotes(i)*t1)];
    end

 end
 y1=y1/max(y1(:));
 sound(y1,fs)
%}

%disp(size(piano1notes,2))
%disp(size(piano2dur,2))
%disp(C/(2^(20/12)))
%a = [3 3 5];
%disp(find(a==5));
%disp(size(listNotes,2))
%disp(bassnotes(find(piano2notes(1)==listNotes)))



               
               
               