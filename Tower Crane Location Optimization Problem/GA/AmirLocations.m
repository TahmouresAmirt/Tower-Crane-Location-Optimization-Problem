clc;
clear;
close all;

Locationss = cell(30,1);

for ii = 1:30

    BestLocation = sprintf('BestLocation%d',ii);
    Location = load(BestLocation);
    Location = round(Location.Position);
    
    Locationss{ii,:} = Location; 
end



 