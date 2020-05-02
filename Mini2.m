function varargout = Mini2(varargin)
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Mini2_OpeningFcn, ...
                   'gui_OutputFcn',  @Mini2_OutputFcn, ...
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

function Mini2_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

axes(handles.axes1)
imshow('Logo.jpg')


guidata(hObject, handles);



function varargout = Mini2_OutputFcn(hObject, eventdata, handles) 
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Tsi',a)

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit2_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Tso',a)

function edit2_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Tti',a)

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Tto',a)

function edit4_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit5_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Rho_s',a)

function edit5_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit6_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Lambda_s',a)

function edit6_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Cp',a)

function edit7_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton1_Callback(hObject, eventdata, handles)
Mini3;
function pushbutton2_Callback(hObject, eventdata, handles)
close(Mini2);

function pushbutton3_Callback(hObject, eventdata, handles)
Mini1;

function listbox1_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String')); 
a = contents{get(hObject,'Value')};
if a == 'Water'
    setappdata(0,'Eita_s',a)
    setappdata(0,'Cp',a)
    setappdata(0,'Lambda_s',a)
    setappdata(0,'Rho_s',a)
elseif a=='Deionized Water'
    setappdata(0,'Eita_s',a)
    setappdata(0,'Cp',a)
    setappdata(0,'Lambda_s',a)
    setappdata(0,'Rho_s',a)
elseif a=='Glycol and Water Solutions'
    setappdata(0,'Eita_s',a)
    setappdata(0,'Cp',a)
    setappdata(0,'Lambda_s',a)
    setappdata(0,'Rho_s',a)
elseif a=='Dielectric Fluid'
    setappdata(0,'Eita_s',a)
    setappdata(0,'Cp',a)
    setappdata(0,'Lambda_s',a)
    setappdata(0,'Rho_s',a)    
end

function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




function edit10_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Eitas_T1',a)


function edit10_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit11_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Eitas_T2',a)

function edit11_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit12_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'T1',a)

function edit12_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit13_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'T2',a)

function edit13_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end





function edit15_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'k_tube_fluid',a)

function edit15_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'tube_flu_cp',a)

function edit16_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'tube_flu_viscosity',a)

function edit17_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function edit19_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Mst',a)

function edit19_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
a=str2double(get(hObject,'String'))
setappdata(0,'Fr',a)

function edit20_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.edit1,'String','');
set(handles.edit2,'String','');
set(handles.edit3,'String','');
set(handles.edit4,'String','');
set(handles.edit5,'String','');
set(handles.edit7,'String','');
set(handles.edit10,'String','');
set(handles.edit11,'String','');
set(handles.edit12,'String','');
set(handles.edit13,'String','');
set(handles.edit15,'String','');
set(handles.edit16,'String','');
set(handles.edit17,'String','');
set(handles.edit19,'String','');
set(handles.edit20,'String','');
