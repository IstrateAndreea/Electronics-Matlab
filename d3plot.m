figure
n=100;
x=linspace(-3,3,n);
y=linspace(-3,3,n);
z=linspace(-3,3,n);
[X,Y,Z]=ndgrid(x,y,z);
F= -X.^2.*Z.^2-(2/80).*Y.^3.*Z+(X.^2+60.*Y.^4+Z.^2-0.3).^3;
isosurface(F,0)
lighting phong
clim
axis equal
colormap jet;
view([55 34]);


GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[0 0 0],...
 'foregroundcolor',[1 1 1],...
 'String','CLOSE',...
 'Callback','close');