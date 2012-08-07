Quantile normalize a .tab text array in MATLAB.

Given a path to a .tab file of floats like '~/data/GSE7307.raw.tab', this program generates in the same path:

* ~/data/GSE7307.raw.tab.eps --- boxplot of unnormalized arrays in eps format
* ~/data/GSE7307.raw.tab.png --- boxplot of unnormalized arrays in png format
* ~/data/GSE7307.raw.tab.normed.eps --- boxplot of quantile normalized arrays in eps format
* ~/data/GSE7307.raw.tab.normed.eps --- boxplot of quantile normalized arrays in png format
* ~/data/GSE7307.raw.tab.normed.mat --- matlab matrix of quantile-normalized float data with no text labels



*EXAMPLE USE:*

    cd /path/to/matlab_scripts
    matlab -nodisplay -nosplash -nodesktop -logfile "~/mylog.txt" -r "normdata_workflow('~/data/GSE7307.raw.tab'); exit"