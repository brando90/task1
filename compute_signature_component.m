function [ mu_k_n ] = compute_signature_component( I, t_k, n, G )
%compute_signature_component summary = computes mu^k_n(I)
%   computes signature

[g_m g_n g_o] = size(G);
for i = 1:g_o;
    g = G(:,:, i);
    proj = dot(I, inv(g)t)
    sigmf(proj, [1 0]);
    



end

