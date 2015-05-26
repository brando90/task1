%dimension space
d = 10;

%generate random image I
I = generate_random_image(d, -1000, 1000);

%group circular shift
G = generate_circular_shift(d);
[~, ~, size_G] = size(G);

%number of tempaltes
K = 5;
%number of components in a signature
N = 3;

%generate random templates K
templates_G = generate_random_tempaltes_transformed(d, K, G);

%generate signature S(I) and S(gI)
sigma_I = generate_signature(I, templates, G, N);
gI = G(1) * I;
sigma_gI = generate_signature(gI, templates, G, N);

%compute distance between signatures:
[~, m] = size(sigma_gI);
for k = 1:m;
    mu_k_I = sigma_I(:, k);
    mu_k_gI = sigma_gI(:, k);
    dis = norm( mu_k_I - mu_k_gI , 2);
    disp(dis);
end

