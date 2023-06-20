%% plot single neuron example in different trials
load sig_habi;
Cond_tone_ts = [240, 270; 360, 390; 480, 510];
Cond_trace_ts = [270, 290; 390, 410; 510, 530];

figure;
sig=sig_sdff;
numplot=[2274 1944];  % habituation example cell
sigt=sig(numplot,660:1650);
sigt=sigt./max(sigt,[],2);
plot((sigt+(1:size(sigt,1))')');
hold on;axis off;box off;
xline1=720-660;xline2=810-660;xline22=870-660;xline3=1080-660;xline4=1170-660;xline44=1230-660;
xline5=1440-660;xline6=1530-660;xline66=1590-660;xline7=2178-660;xline8=2238-660;xline88=2298-660;
marker=[xline1,xline2,xline22,xline3,xline4,xline44,xline5,xline6,xline66,xline7,xline8,xline88];
% for i=1:12
% xline( marker(i)+10, '--r');
% hold on;
% end

area([xline1; xline2],[ylim; ylim],'FaceAlpha',0.2,'FaceColor','r','LineStyle','none');
area([xline2; xline22],[ylim; ylim],'FaceAlpha',0.3,'FaceColor',[0 0.74 1],'LineStyle','none');
area([xline3; xline4],[ylim; ylim],'FaceAlpha',0.2,'FaceColor','r','LineStyle','none');
area([xline4; xline44],[ylim; ylim],'FaceAlpha',0.3,'FaceColor',[0 0.74 1],'LineStyle','none');
area([xline5; xline6],[ylim; ylim],'FaceAlpha',0.2,'FaceColor','r','LineStyle','none');
area([xline6; xline66],[ylim; ylim],'FaceAlpha',0.3,'FaceColor',[0 0.74 1],'LineStyle','none');
axis off;box off;











