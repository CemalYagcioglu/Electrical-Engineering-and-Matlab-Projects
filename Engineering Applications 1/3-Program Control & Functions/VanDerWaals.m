function Pressure = VanDerWaals(Temp, Vol, Gas)
% VanDerWaals  Calculate pressures for a gas.
%   Pressure = VanDerWaals(Temp, Vol, Gas)
%     Temp: a matrix of temperatures
%     Vol: a matrix of specific volumes
%     Gas: a string with the name of a gas
% [VanDerWaals.m]
% [Cemal Yagcioglu]
% [September 24, 2016]

% I have adhered to all the tenets of the 
% Duke Community Standard in creating this code.
% Signed: [cy111]

%% Use switch tree to determine gas and a and b values
R = 0.08206;

        switch Gas
                case 'Helium'
                a=0.0341;
                b=0.0237;
                case 'He'
                a=0.0341;
                b=0.0237;
                 case 'Hydrogen'
                a=0.244;
                b=0.0266;
                 case 'H2'
                a=0.244;
                b=0.0266;
                 case 'Oxygen'
                a=1.36; 
                b=0.0318;
                 case 'O2'
                a=1.36; 
                b=0.0318;
                 case 'Chlorine'
                a=6.49;
                b=0.0562;
                 case 'Cl2'
                a=6.49;
                b=0.0562;
                 case 'Carbon dioxide'
                a=3.59;
                b=0.0427;
                 case 'CO2'
                a=3.59;
                b=0.0427;
                 case 'Ammonia'
                a=4.225;
                b=0.03713;
               
                 case 'NH3'
                 a=4.225;
                b=0.03713;
            
                otherwise
        error('Gas not in database!');
        
        
        end
        Pressure= (R.*Temp)./(Vol-b)-a./((Vol).^2);
end
    

%% Use formula to calculate array of pressures for that gas
