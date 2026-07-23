%-------------- Define nomial value in PV---------------

% PV cell in series control the PV output voltage by Ns*Voc_n
Ppv.Ns=54;

% The following circuit paramters are for the array with 54 cell in series and 1 in paralell
% Nomial value of Open circut voltage
Ppv.Voc_n=32.9; % Volt

% Nomial value of short circuit current
% Isc_n approximately equals to Ipv_n
Ppv.Isc_n=8.21; % Ampere

%  equivalent series resistance
Ppv.Rs=0.221;

%  equivalent series resistance
Ppv.Rp=415.405;

% Diode constant (Usually varies from 1 to 1.5)
Ppv.a=1.3;
% Bandgap energy of the semiconductor
Ppv.Eg=1.12; %eV
% % Electron charge
% Ppv.q=1.60217646*10^(-19);
% % Boltzmann constant 
% Ppv.k=1.3806503*10^(-23);

%Coefficient temperature of short circuit current
Ppv.KI=0.0032; % Ampere/Kelvin  (A/K)

% Nomial PV current
Ppv.Ipv_n=8.21; % Ampere (A)

% Nomial irradiance
Ppv.G_n=1000; % Watt per square meters (W/m^2)

% Nomial temperature 
Ppv.T_n=25+273; % In Kelvin
