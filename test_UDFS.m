clear;
clc;

%% load the data
load('/Users/shenzixiao/Dropbox/DATA/UCI/WBC/wbc.mat');
data = table2array(breastcancerwisconsin);

%% data preprocessing
NaN_Column = find(any(isnan(data)));
NaN_Row = find(isnan(data(:, NaN_Column)));
data(NaN_Row, :) = [];
data = data(:, 2:11);
clear NaN_Column NaN_Row

%% set up X and y
num_F = size(data, 2) - 1;
Vectors = 1:num_F;
Target = num_F + 1;

X = data(:, Vectors);
y = data(:, Target);
y = y -3;
data = [X y];
%% divide the training and testing sets
proportion = 0.67;
[train, test] = split2train_test(data, proportion);

train_X = train(:, Vectors);
train_y = train(:, Target);

test_X = test(:, Vectors);
test_y = test(:, Target);

%% Feature Selection Process
% MIFS
[r_MIFS, w_MIFS] = UDFS_Zeal(train_X, train_y)
