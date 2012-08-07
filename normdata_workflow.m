function normdata_workflow(tabname)
% Quantile normalize a tab-delimited matrix; save boxplots.
% Files saved to same path as `tabname`

disp(sprintf('Loading %s...', tabname))
M = importfile(tabname);
q = maboxplot(M);
disp(sprintf('Plotting %s.eps and %s.png...', tabname, tabname))
print('-depsc','-tiff','-r300', sprintf('%s.eps',tabname));
print('-dpng', sprintf('%s.png',tabname));

disp(sprintf('Quantile Norming %s...', tabname))
M = quantilenorm(M);
q = maboxplot(M);
disp(sprintf('Plotting %s.normed.eps and %s.normed.png...', tabname, tabname))
print('-depsc','-tiff','-r300', sprintf('%s.normed.eps',tabname));
print('-dpng', sprintf('%s.normed.png',tabname));

outname = sprintf('%s.normed.mat',tabname);
disp(sprintf('Saving quantile-normed to %s', outname))
save(outname, 'M')
