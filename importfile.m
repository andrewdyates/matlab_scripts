function M = importfile(fileToRead)
% import .tab file data as float matrix 'M'

% Import the file
newData1 = importdata(fileToRead);

% Create M matrix
vars = fieldnames(newData1);
for i = 1:length(vars)
    if strcmp(vars{i}, 'data')
        M = newData1.(vars{i});
    end
end

