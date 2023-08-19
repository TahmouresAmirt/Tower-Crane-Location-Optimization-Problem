%% Thank you for using this repository.
%  To Pursue the running procedure, please read the Readme file.
%  The Genetic Algorithm is implemented to solve TCOP.
%  TCLP stands for Tower Crane Location Problem.

%% Main Steps
for ii = 1:30 % Number of Total Independent Runs
    close all;

% Loading the required Vectors   
load Csikn.mat;
load emptyCell.mat;
load Dik.mat;
load Djk.mat;

global csikn;
global EmptyCell;
global dik;
global djk;
global Ws;
global Pn;
global Ln;
global Num;

% Quantification of Ws, Pn and Ln Vectors
Ws = [7,7,5.50000000000000,7,7,7,5.50000000000000,5.50000000000000,6.50000000000000,6,6.50000000000000,6,6.50000000000000,7,5.50000000000000,6,6,6.50000000000000,7,5.50000000000000,7,7,6,6.50000000000000,6,6,5.50000000000000,6.50000000000000,5.50000000000000,6.50000000000000,7,5.50000000000000,6,6.50000000000000,6,7,7,6,6.50000000000000,5.50000000000000,5.50000000000000,6,6,7,5.50000000000000,7,5.50000000000000,7,6.50000000000000,6.50000000000000,6,7,5.50000000000000,6.50000000000000,6,7,7,5.50000000000000,6,6.50000000000000,6.50000000000000,5.50000000000000,6,7,7,5.50000000000000,6,6.50000000000000,6.50000000000000,6,7,5.50000000000000,5.50000000000000,6,6.50000000000000,6.50000000000000,7,7,6,6,7,7];


Pn = [200,250,300,350,400,450,500,550];
Ln = [45,55,65,75,85,95,100,105];

csikn = Csikn;
EmptyCell = emptyCell;
dik = Dik;
djk = Djk;
Num = [25,25,35,25,25,25,35,35,44,44,44,44,44,25,35,44,44,44,25,35,25,25,44,44,44,44,35,44,35,44,25,35,44,44,44,25,25,44,44,35,35,44,44,25,35,25,35,25,44,44,44,25,35,44,44,25,25,35,44,44,44,35,44,25,25,35,44,44,44,44,25,35,35,44,44,44,25,25,44,44,25,25]; % S Vector in the Data file

%% Running the Genetic Algorithm 
ga; % To Change the GA parameters open the ga m file.
%% Plotting Section
 BestCost = sprintf('BestCost%d',ii);
 Cost = BestSol.Cost;
 save(BestCost,'Cost');
 
 BestLocation = sprintf('BestLocation%d',ii);
 Position=BestSol.Position;
 save(BestLocation,'Position');
 
 figure = sprintf('Figure%d',ii);
 savefig(figure);

end