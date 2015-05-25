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
for k = 1:t_n;
    t_k = templates(:, k);
    %compute signature for template t_k
    mu_k = zeros(N, 1);
    for n = 1:N;
        mu_k_n = compute_signature_component(I, t_k, n, G);
        mu_k(n,1) = mu_k_n;
    end
end



%compute distance between signatures:

