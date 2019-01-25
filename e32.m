%% Exercise 3.2 %%
%% tests performance of the FIR-wiener filter compared to a naive guess x(n) = y(n)
for ii = 1:10000
    e31
    % ar2cov solves for r(k) in YW given that we know the AR parameters!
    [SigmaYY, SigmaYx] = firw_cov_add(p1, sigma2, p2, sigma2noise, K);
    theta_opt = SigmaYx \ SigmaYY;

    error(ii) = x(end)-theta_opt*y;
    
    derror(ii) = x(end) - y(end);
end

mean_e = mean(error)
var_e = var(error)

mean_d = mean(derror)
var_d = var(derror)