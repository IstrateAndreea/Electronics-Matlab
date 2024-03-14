Fig_t=figure('Name','TRIGONOMETRIC FUNCTIONS',... 
'Units','normalized',... 
'Position',[.1 .1 .5 .5],...
'NumberTitle','off','color',[0 1 0]); 

GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[1 1 1],...
 'foregroundcolor',[0 0 0],...
 'String','CLOSE',...
 'Callback','close');
x=0:pi/5:2*pi;
y1=cos(x);
y2=cos(x-0.60);
y3=cos(x-0.10);
y4=cos(x+0.10);

x=0:pi/5:2*pi;
z1=sin(x);
z2=sin(x-0.60);
z3=sin(x-0.10);
z4=sin(x+0.10);


subplot('position',[0.27 0.65 0.4 0.30]);
plot(x,y1,'k',x,y2,'b--o',x,y3,'r>',x,y4,'r<','LineWidth',2)
grid on;
title('COSINE ');

subplot('position',[0.27 0.3 0.4 0.30]);
plot(x,z1,'k',x,z2,'b--o',x,z3,'r>',x,z4,'r<','LineWidth',2)
grid on;
title('SINE ');
