%% Load reference images
[channel1, channel2, channel3, images, nim, imname] = readImages(['SHINE_color_INPUT' filesep 'iso-scene' filesep], 'png', 2);

%% Compute REFERENCE: mean histogram
mask = ones(size(images{1}));
avghist = avgHist(images, mask);

%% Plot
figure;bar(avghist(1:256));

%% Save ref hist
save("avghist_isoscene.mat", "avghist")

%% Load
load("avghist_isoscene.mat", "avghist")