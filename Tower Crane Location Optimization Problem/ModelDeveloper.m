tic
clc; 
clear; 
close all; 
%% i,j,k and Ct variables 
i = load('i.mat'); i = i.i;
j = load('j.mat'); j = j.j;
k = load('k.mat'); k = k.k;
Ct = [2;2.5;3;3.5;4;4.5;5;5.5]; %% Types of Tower Crane 
%%
II = size(i,1);
JJ = size(j,1);
KK = size(k,1);
CTT = size(Ct,1);
VOLUME = II*JJ*KK*CTT;
Dij = zeros(1,VOLUME);
Dik = zeros(1,VOLUME);
Djk = zeros(1,VOLUME);
Tvk = zeros(1,VOLUME);
Trk = zeros(1,VOLUME);
Twk = zeros(1,VOLUME);
Thk = zeros(1,VOLUME);
Tijk = zeros(1,VOLUME);
Csikn = zeros(1,VOLUME);

%% Parameters
Vr = 53.3;
Vw = 7.57;
Vh = 60;
Alpha = 0.25;
Beta = 1;

%% Calculating D
a = 1;

         for Ct = [2,2.5,3,3.5,4,4.5,5,5.5]
                for e = 1:size(k,1)
                     for w = 1:size(i,1)
                         for r = 1:size(j,1)
               Dij(a) = sqrt((i(w,1)-j(r,1))^2 + ((i(w,2)-j(r,2)))^2);
              
               Dik(a) = sqrt((i(w,1)-k(e,1))^2 + ((i(w,2)-k(e,2)))^2);
               
               Djk(a) = sqrt((k(e,1)-j(r,1))^2 + (k(e,2)-j(r,2))^2);
              
               Tvk(a)= abs((i(w,3) - j(r,3)))./Vh;
              
               
               Trk(a) = abs(Dik(a) - Djk(a))./Vr;
               Twk(a) = 1/Vw .* acos((Djk(a).^2 + Dik(a).^2 - Dij(a).^2)./(2.*Dik(a).*Djk(a)));
               Thk(a) = max(Trk(a),Twk(a)) + (Alpha .* min(Trk(a),Twk(a)));
               Tijk(a) = max(Thk(a),Tvk(a)) + (Beta .* min(Thk(a),Tvk(a)));
               Csikn(a) = Tijk(a) * Ct;
              
               
               Ctt = [2,2.5,3,3.5,4,4.5,5,5.5];
               W = num2str([find(Ctt==Ct) e w r]);
               W = str2num(W);
               emptyCell(1,a) = {W};
               a = a + 1 ;
        end
      end
   end
end

 
toc