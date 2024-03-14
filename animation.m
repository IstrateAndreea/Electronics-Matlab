t = linspace(0, 6, 40);
x = 2*sin(t);
y = x.^2;
z = y.*cos(t);

figure; hold on
title(sprintf('Trajectory\nTime: %0.1f sec', t(1)), 'Interpreter', 'Latex');
xlabel('x', 'Interpreter', 'Latex')
ylabel('y', 'Interpreter', 'Latex')
zlabel('z', 'Interpreter', 'Latex')
grid minor  
axis equal 
view(-37.5,30); 

GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[0 0 0],...
 'foregroundcolor',[1 1 1],...
 'String','CLOSE',...
 'Callback','close');


filename = 'animation.gif';

plot3(x,y,z,'Color','none');

p = plot3(x(1),y(1),z(1),'b');
m = scatter3(x(1),y(1),z(1),'filled','b');

for k = 1:length(t)
   
    p.XData = x(1:k);
    p.YData = y(1:k);
    p.ZData = z(1:k);
    
    m.XData = x(k); 
    m.YData = y(k);
    m.ZData = z(k);
    
    title(sprintf('Trajectory\nTime: %0.1f sec', t(k)),...
    'Interpreter','Latex');
   
    pause(0.01)
    
    frame = getframe(gcf);
    im = frame2im(frame);
    [imind,cm] = rgb2ind(im,256);
    if k == 1
        imwrite(imind,cm,filename,'gif', 'Loopcount',inf,...
        'DelayTime',0.1);
    else
        imwrite(imind,cm,filename,'gif','WriteMode','append',...
        'DelayTime',0.1);
    end
end

