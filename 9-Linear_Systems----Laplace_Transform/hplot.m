function [ ] = hplot(b, a)

[r, p, k] = residue(b, a);

imp =  @(t) r'*exp(p*t)*u(t);

fplot(imp);

end




