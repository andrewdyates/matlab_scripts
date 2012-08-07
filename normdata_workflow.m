function normdata_workflow(tabname)
disp(sprintf('Loading %s', tabname))
M = importfile(tabname);
q = maboxplot(M);
print('-depsc','-tiff','-r300', sprintf('%s.eps',tabname));
print('-dpng','-r300', sprintf('%s.png',tabname));
% display sprintf('Quantile Norming %s', tabname)
% M = quantilenorm(M);
% q = maboxplot(M);
% print('-depsc','-tiff','-r300', strcat(tabname,'.normed'));
% print('-dpng','-r300', strcat(tabname,'.normed'));
% outname = strcat(tabname, '.normed');
% display sprintf('Saving quantile-normed to %s', outname)
% save outname M
