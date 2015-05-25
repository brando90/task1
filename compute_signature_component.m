function [ mu_k_n ] = compute_signature_component(I, t_k, n, G )
%compute_signature_component summary = computes mu^k_n(I)
%   computes signature

[~, ~, g_o] = size(G);
for i = 1:g_o;
    %g = G(:,:, i);
    g = G;
    %proj = dot(I, g \ t_k);
    proj = dot(I, inv(g) *t_k);
    mu_k_n = sigmf(proj, [1 0]) / g_o;
end

