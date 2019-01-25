function [SigmaYY, SigmaYx] = firw_cov_add(A, sigma2, Anoise, sigma2noise, K)
    % ar2cov solves for r(k) in YW given that we know the AR parameters!
    SigmaYY = toeplitz(ar2cov(A, sigma2, K-1));
    SigmaYx = ar2cov(Anoise, sigma2noise, K-1);
end