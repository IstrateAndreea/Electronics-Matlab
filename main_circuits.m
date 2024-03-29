
Fig_c=figure('Name','CIRCUITS',... 
'Units','normalized',... 
'Position',[.1 .1 .5 .5],...
'NumberTitle','off','color',[0 0.5 1]); 

GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[0 0 1],...
 'foregroundcolor',[1 1 1],...
 'String','CLOSE',...
 'Callback','close');

ha = axes('units','normalized',...
    'Position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('Circuits.png');
hi = imagesc(I);
colormap gray;

GO_rb1=uicontrol('Style','radiobutton',...
 'Units','normalized',...
 'Position',[0.55 0.80 0.2 0.08],...
 'backgroundcolor',[0 0 1],...
 'foregroundcolor',[1 1 1],...
 'FontSize',18,...
 'String','RC (voltage)',...
 'Callback','interfataRC');

GO_rb2=uicontrol('Style','radiobutton',...
 'Units','normalized',...
 'Position',[0.22 0.48 0.3 0.08],...
 'backgroundcolor',[0 0 1],...
 'foregroundcolor',[1 1 1],...
 'FontSize',16,...
 'String','RL(voltage and current)',...
 'Callback','main_interface');

GO_rb3=uicontrol('Style','radiobutton',...
 'Units','normalized',...
 'Position',[0.35 0.24 0.28 0.08],...
 'backgroundcolor',[0 0 1],...
 'foregroundcolor',[1 1 1],...
 'FontSize',18,...
 'String','DR(output voltage)',...
 'Callback','main_interface2');

