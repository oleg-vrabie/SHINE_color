%% Load reference images
folder = 'to_histmatch/action-in-context'; %'iso-scene'
[channel1, channel2, channel3, images, nim, imname] = readImages(['SHINE_color_INPUT' filesep folder filesep], 'png', 2);

%% Compute REFERENCE: mean histogram
mask = ones(size(images{1}));
avghist = avgHist(images, mask);

%% Plot
figure;bar(avghist(1:256));

%% Save ref hist
name = split(folder, '/');
fname = sprintf('avghist_%s.mat', name{2}); % "avghist_isoscene_man-cor.mat"
save(fname, "avghist")

%% Load
load(fname, "avghist")