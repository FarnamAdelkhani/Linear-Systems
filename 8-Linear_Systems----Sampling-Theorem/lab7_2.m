function lab7_2
ab = {[1 5] 5;
	[1 3 2] 2
	[1 1 1] 1
	[1 2 1] 1
	[1 0 1] 1
	[1 6 11 6] 6
	[1 4 21 34] 34};
lab = length(ab);
for i = 1:lab
	disp(['a=[', num2str(ab{i, 1}), ']   b=[', num2str(ab{i, 2}), ']'])
	set(figure, 'Color', 'w', ...
		'Units', 'inch', ...
		'Position', [2 2 6 2]);
	subplot(1, 2, 1)
	impulse(ab{i, 2}, ab{i, 1})
	subplot(1, 2, 2)
	freqde(ab{i, 2}, ab{i, 1})
end
