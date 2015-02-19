fig1=figure;

left=100; bottom=100 ; width=100 ; height=100;
pos=[left bottom width height];
axis off
colorbar('southoutside')
%set(hFig, 'Position', [x y width height])
set(fig1,'Position',[100 58 100 200]) 
saveas(fig1,'test.png','png');