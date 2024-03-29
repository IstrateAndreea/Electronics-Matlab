Fig=figure('Name','PROJECT_GUI',... 
'Units','normalized',... 
'Position',[.06 .1 0.9 0.9],...
'NumberTitle','off'); 

GO_p=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.05 0.1 0.1 0.08],...
 'backgroundcolor',[1 0 0],...
 'foregroundcolor',[1 1 1],...
 'String','CLOSE',...
 'Callback','close');

GO_t=uicontrol('Style','text',...
 'Units','normalized',...
'Position',[0.37 0.82 0.34 0.14],...
'backgroundcolor',[1 0 0],...
'foregroundcolor',[1 1 1],...
'FontWeight','bold',...
'FontSize',60,...
'String','ELECTRONICS');

uicontrol('Style','text',...
  'Units','normalized',...
 'Position',[0.096 0.82 0.17 0.05],...
 'foregroundcolor','w',...
 'backgroundcolor',[1 0 0],...
 'FontSize',16,...
 'String','Istrate Andreea Maria');

ha = axes('units','normalized',...
    'Position',[0 0 1 1]);
uistack(ha,'bottom');
I=imread('GUI.png');
hi = imagesc(I);


GO_a=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.76 0.58 0.2 0.08],...
 'backgroundcolor',[1 0 0],...
 'foregroundcolor',[1 1 1],...
 'FontSize',18,...
 'String','Circuits',...
 'Callback','main_circuits');

GO_b=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.76 0.43 0.2 0.08],...
 'backgroundcolor',[1 0 0],...
 'foregroundcolor',[1 1 1],...
 'FontSize',16,...
 'String','Trigonometric functions',...
 'Callback','main_trig');

GO_c=uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.76 0.28 0.2 0.08],...
 'backgroundcolor',[1 0 0],...
 'foregroundcolor',[1 1 1],...
 'FontName','Arial',...
 'FontSize',18,...
 'String','3D plots',...
 'Callback','main_3D');

h = uimenu('Label','Main menu');
h1=uimenu(h,'Label','Documentation');
uimenu(h,'Label','Save','Callback','save');
uimenu(h,'Label','Close','Callback','close',...
 'Separator','on','Accelerator','Q');

uimenu(h1,'Label','PDF format','Callback','pdf_documentation');
uimenu(h1,'Label','Word format','Callback','word_documentation');

















