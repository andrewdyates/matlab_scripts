function normdata_workflow(tabname)
display strcat('Loading ', tabname)
M = importfile(tabname);
q = maboxplot(M);
print('-depsc','-tiff','-r300',tabname);
print('-dpng','-r300',tabname);
display strcat('Norming ', tabname)
M = quantilenorm(M);
q = maboxplot(M);
print('-depsc','-tiff','-r300', strcat(tabname,'.normed'));
print('-dpng','-r300', strcat(tabname,'.normed'));
outname = strcat(tabname, '.normed');
display strcat('Saving quantile-normed to ', outname)
save outname M
