[X,Y,Z] =peaks(30);
figure
surfc(X,Y,Z)
colormap hot
axis([-2 4 -3 4 -10 10])

GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[0 0 0],...
 'foregroundcolor',[1 1 1],...
 'String','CLOSE',...
 'Callback','close');