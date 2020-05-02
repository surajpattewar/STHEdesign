function varargout = Main(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;
ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
bg = imread('color.png'); imagesc(bg);
set(ah,'handlevisibility','off','visible','off')
uistack(ah, 'bottom');

axes(handles.axes1)
imshow('Logo.jpg')

axes(handles.axes6)
imshow('Fx.png')
% Update handles structure
guidata(hObject, handles);



function varargout = Main_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
a = str2double(get(hObject,'String'))
setappdata(0,'Ds',a);


function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton1_Callback(hObject, eventdata, handles)
Mini1;

function pushbutton2_Callback(hObject, eventdata, handles)
close(Main);


function edit2_Callback(hObject, eventdata, handles)
a = str2double(get(hObject,'String'));
setappdata(0,'Dt',a);

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'));
setappdata(0,'Ltw',a)    
    
function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Lambda_tw',a)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
a = str2double(get(hObject,'String'))
setappdata(0,'Ltp',a);


function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






function edit7_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'BC',a)

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','Blue');
end



function edit8_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Ms',a)

function edit8_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function listbox1_Callback(hObject, eventdata, handles)
 contents = cellstr(get(hObject,'String')) 
a = contents{get(hObject,'Value')} 
setappdata(0,'Theta_tp',str2double(a))


function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Ntt',a)

function edit9_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function listbox3_Callback(hObject, eventdata, handles)
 contents = cellstr(get(hObject,'String')) 
a = contents{get(hObject,'Value')} 
setappdata(0,'Ds',str2double(a))

function listbox3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function listbox4_Callback(hObject, eventdata, handles)
 contents = cellstr(get(hObject,'String')) 
a = contents{get(hObject,'Value')} 
setappdata(0,'Dt',str2double(a))

function listbox4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function listbox5_Callback(hObject, eventdata, handles)
 contents = cellstr(get(hObject,'String')) 
a = contents{get(hObject,'Value')} 
setappdata(0,'Ltw',str2double(a))

function listbox5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function listbox6_Callback(hObject, eventdata, handles)
a = get(hObject,'Value')
 
if a == 1
    setappdata(0,'Lambda_tw',310)
elseif a==2
    setappdata(0,'Lambda_tw',380)
elseif a==3
    setappdata(0,'Lambda_tw',65)
elseif a==4
    setappdata(0,'Lambda_tw',40)
elseif a==5
    setappdata(0,'Lambda_tw',38)
elseif a==6
    setappdata(0,'Lambda_tw',30)
elseif a==7
    setappdata(0,'Lambda_tw',18)
end



function listbox6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function Main_SizeChangedFcn(hObject, eventdata, handles)

function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit7,'String','');
set(handles.edit8,'String','');
set(handles.edit9,'String','');
