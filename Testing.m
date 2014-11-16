Raw_Data_Extractor('C:\ResearchCode\BT_SIGNAL_ANALYSIS\1413251016704')
%listing = dir('C:\ResearchCode\BT_SIGNAL_ANALYSIS')
path = 'C:\ResearchCode\BT_SIGNAL_ANALYSIS\Raw Data'
d = dir(path);
isub = [d(:).isdir]; %# returns logical vector
nameFolds = {d(isub).name}';
nameFolds(ismember(nameFolds,{'.','..'})) = [];
for i = nameFolds
    a = '\' 
    C = strcat(path,a, i)
    for j = i:
        %k = 
        j(1,1)
        files = dir(char(j(1,1)))
    end
end