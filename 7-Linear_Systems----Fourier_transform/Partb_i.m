%% Part b - i
c = 0; s = 0; a = 1;
for w = 0:.001:10
    c(a) = cos(w);
    s(a) = sin(w);
    a = a + 1;
end

%% Part b continued

freqcos(10, [1 10])

ab ={
    [1 5] 5
    [1 3 2] 2
    [1 1 1] 1
    [1 2 1] 1
    [1 0 1] 1
    [1 6 11 6] 6
    [1 4 21 34] 34};

for L = 1:length(ab)
figure
freqcos(ab(L,2), ab(L,1));
end