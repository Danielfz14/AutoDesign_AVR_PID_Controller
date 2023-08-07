ffit=Graphics('Fig1');
for i=1:51
plot(0:50, A1(i,:),'b')
hold on
end
plot(0:50, xmed,'r')
xlabel('Iterations')
ylabel('Fitness')
%ylim([0.06 0.1])
xlim([0 50])
setup(ffit);
setsize(ffit,2,[4,2]);
setfont(ffit,12)
