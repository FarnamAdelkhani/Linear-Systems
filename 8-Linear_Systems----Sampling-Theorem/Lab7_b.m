ab ={
    [1 5] 5
    [1 3 2] 2
    [1 1 1] 1
    [1 2 1] 1
    [1 0 1] 1
    [1 6 11 6] 6
    [1 4 21 34] 34
};

lab = length(ab);

for i = 1:lab
    figure
    freqcos(ab(i,2), ab(i,1));
end