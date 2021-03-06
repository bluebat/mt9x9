% 9x9 multiplication table in MATLAB
% CC0, Wei-Lun Chao <bluebat@member.fsf.org>, 2020.
% octave mt9x9.m

for i = (1:3:9)
    for j = (1:9)
        for k = [i, i+1, i+2]
            fprintf('%dx%d=%2d\t', k, j, k*j);
        end
        fprintf('\n');
    end
    disp('');
end
