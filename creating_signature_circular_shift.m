%dimension space
d = 3;

%generate random image I
I = rando([-1000, 1000], d, 1);

%group circular shift
circ = [0 0 1; 1 0 0; 0 1 0];
G(: , : , 1) = circ;

%number of tempaltes
K = 4;
%number of components in a signature
N = 12;


%generate random templates K
templates(:, K) = zeros(d, K);
for k = 1:K;
    r = rando([-1000, 1000], 3, 1); %3 x 1 random vector
    r = r / norm(r, 2);
    templates(:, t) = r;
end

[t_m, t_n] = size(templates);
sigma_I = generate_signature(I, templates, G, N);
gI = circ * I;
sigma_gI = generate_signature(gI, templates, G, N);

%compute distance between signatures:
[~, m] = size(sigma_gI);
for k = 1:m;
    mu_k_I = sigma_I(:, k);
    mu_k_gI = sigma_gI(:, k);
    dis = norm( mu_k_I - mu_k_gi , 2);
    disp(dis);
end

