
%% Reading files and creating structures

%INPUT: Optotrack generated .csv files
%OUTPUT: Structure with 3 fields for time, x position, y position, each for
%14 trials

[no_wiggle,Motors_10sec,wiggle] = readRingoFiles();

%% Seperating x, y position information and time

%INPUT: Structure with 3 fields
%OUTPUT: Equally sized time, y, dev series

[wiggle_dev,wiggle_dist,wiggle_t] = ringo_cut_3d(wiggle);
[no_wiggle_dev,no_wiggle_dist,no_wiggle_t] = ringo_cut_3d(no_wiggle);

%% Cleaning y data
% smoothening the data values to account for noisy data collection

%INPUT: absolute valued y series
%OUTPUT: From y to distance

wiggle_dist_new = clean_yposition(wiggle_dist);
no_wiggle_dist_new = clean_yposition(no_wiggle_dist);



%% Visualization
subplot(1,2,1)
plot_data(no_wiggle_dist_new,no_wiggle_dev);
title('No-Wiggle')
xlabel('Distance covered')
ylabel('Deviation')

subplot(1,2,2)
plot_data(wiggle_dist_new,wiggle_dev);
title('Wiggle')
xlabel('Distance covered')
ylabel('Deviation')
