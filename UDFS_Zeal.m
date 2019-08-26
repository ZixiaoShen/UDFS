function [Rank, Score] = UDFS_Zeal(X, nClass)

    gammaCandi = 10.^(-5);
    lamdaCandi = 10.^(-5);
    knnCandi = 1;
    paramCell = fs_unsup_udfs_build_param(knnCandi, gammaCandi, lamdaCandi);
    
    X = double(X);
    
    disp('UDFS: Regularized Discriminative Feature Selection for Unsupervised Learning');
    




end
