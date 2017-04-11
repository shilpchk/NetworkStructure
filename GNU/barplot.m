s = load('m2a9Non7.dd');
X=s(1:20,1);
Y=s(1:20,2);
bar(X,Y, 'k');
set(gca,'YScale','log')
set(gca,'yticklabel',{'0','1','2','3','4','5','6','7'})
xlim([0 21])
h1=xlabel('Connectivity')
h2=ylabel('log(Count)')
set(gca,'FontSize',16)
set(h1,'FontSize',16)
set(h2,'FontSize',16)
print('barsigma9.eps','-deps')
