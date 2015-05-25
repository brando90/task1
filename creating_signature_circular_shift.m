circ = [0 0 1; 1 0 0; 0 1 0];
G(: , : , 1) = circ;

%number of tempaltes
K = 10;

%generate random templates K
for k = 1:K;
    r = rando([-1000, 1000], 3, 1); %3 x 1 random vector
    r = r / norm(r, 2);
    templates(:, t) = r;
end

[t_m, t_n] = size(templates);
for t = 1:t_n;
    
end