%% data structure

load('dataset_color.mat')
data

% data = 
% 
%   struct with fields:
% 
%     sensitivityAch: [2×12×51 double]
%      sensitivityRG: [2×8×51 double]
%      sensitivityBY: [2×8×51 double]
%     frequenciesAch: [0.2500 0.3482 0.4850 0.6755 0.9408 1.3104 1.8251 2.5420 3.5405 4.9313 6.8683 9.5662]
%      frequenciesRG: [0.2500 0.3482 0.4850 0.6755 0.9408 1.3104 1.8251 2.5420]
%      frequenciesBY: [0.2500 0.3482 0.4850 0.6755 0.9408 1.3104 1.8251 2.5420]
% 
% the 3 sensitivty fields are the cone contrast sensitivities for Achromatic, 
% Red-Green and Blue-Yellow stimuli
% the 3 dimensions are:
% - 2 repetitions
% - 12 or 8 frequencies tested
% - 51 subjects
% 
% the 3 frequencies fields are the frequencies tested for each condition


%% example plot of the cone-contrast sensitivity over the population

figure('Name','Cone-contrast sensitivty')
hold on
plot(data.frequenciesAch,mean(mean(data.sensitivityAch,3),1),'k')
plot(data.frequenciesRG,mean(mean(data.sensitivityRG,3),1),'r')
plot(data.frequenciesBY,mean(mean(data.sensitivityBY,3),1),'b')
set(gca,'XScale','log','YScale','log')
axis square 
grid on
xlabel('Spatial frequency (c/d)')
ylabel('Cone-contrast sensitivity')

legend({'Ach.','RG','BY'})
