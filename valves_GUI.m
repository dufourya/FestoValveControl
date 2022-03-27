function varargout = valves_GUI(varargin)
% VALVES_GUI MATLAB code for valves_GUI.fig
%      VALVES_GUI, by itself, creates a new VALVES_GUI or raises the existing
%      singleton*.
%
%      H = VALVES_GUI returns the handle to a new VALVES_GUI or the handle to
%      the existing singleton*.
%
%      VALVES_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VALVES_GUI.M with the given input arguments.
%
%      VALVES_GUI('Property','Value',...) creates a new VALVES_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before valves_GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to valves_GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help valves_GUI

% Last Modified by GUIDE v2.5 14-Aug-2014 17:22:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @valves_GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @valves_GUI_OutputFcn, ...
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
% End initialization code - DO NOT EDIT


% --- Executes just before valves_GUI is made visible.
function valves_GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to valves_GUI (see VARARGIN)

% Choose default command line output for valves_GUI
handles.output = hObject;

% Connect to Wago controler, initialize valves as open
handles.wago = wagoNModbus('192.168.1.2', ones(1, 16),false);
handles.wago.setValves(0:15, zeros(1, 16));

set(gcf,'CloseRequestFcn',@closeGUI);

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes valves_GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = valves_GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in valve1.
function valve1_Callback(hObject, eventdata, handles)
% hObject    handle to valve1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve1
handles.wago.setValves(0, get(hObject,'Value'));
guidata(hObject, handles);


% --- Executes on button press in valve2.
function valve2_Callback(hObject, eventdata, handles)
% hObject    handle to valve2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve2
handles.wago.setValves(2, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve3.
function valve3_Callback(hObject, eventdata, handles)
% hObject    handle to valve3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve3
handles.wago.setValves(1, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve4.
function valve4_Callback(hObject, eventdata, handles)
% hObject    handle to valve4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve4
handles.wago.setValves(3, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve5.
function valve5_Callback(hObject, eventdata, handles)
% hObject    handle to valve5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve5
handles.wago.setValves(4, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve6.
function valve6_Callback(hObject, eventdata, handles)
% hObject    handle to valve6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve6
handles.wago.setValves(6, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve7.
function valve7_Callback(hObject, eventdata, handles)
% hObject    handle to valve7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve7
handles.wago.setValves(5, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in valve8.
function valve8_Callback(hObject, eventdata, handles)
% hObject    handle to valve8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of valve8
handles.wago.setValves(7, get(hObject,'Value'));
guidata(hObject, handles);

function valve9_Callback(hObject, eventdata, handles)
handles.wago.setValves(8, get(hObject,'Value'));
guidata(hObject, handles);

function valve10_Callback(hObject, eventdata, handles)
handles.wago.setValves(10, get(hObject,'Value'));
guidata(hObject, handles);

function valve11_Callback(hObject, eventdata, handles)
handles.wago.setValves(9, get(hObject,'Value'));
guidata(hObject, handles);

function valve12_Callback(hObject, eventdata, handles)
handles.wago.setValves(11, get(hObject,'Value'));
guidata(hObject, handles);

function valve13_Callback(hObject, eventdata, handles)
handles.wago.setValves(12, get(hObject,'Value'));
guidata(hObject, handles);

function valve14_Callback(hObject, eventdata, handles)
handles.wago.setValves(14, get(hObject,'Value'));
guidata(hObject, handles);

function valve15_Callback(hObject, eventdata, handles)
handles.wago.setValves(13, get(hObject,'Value'));
guidata(hObject, handles);

function valve16_Callback(hObject, eventdata, handles)
handles.wago.setValves(15, get(hObject,'Value'));
guidata(hObject, handles);

% --- Executes on button press in closeAll_lines.
function closeAll_lines_Callback(hObject, eventdata, handles)
% hObject    handle to closeAll_lines (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.wago.setValves(0:7, zeros(1,8));
set(handles.valve1,'Value',0);
set(handles.valve2,'Value',0);
set(handles.valve3,'Value',0);
set(handles.valve4,'Value',0);
set(handles.valve5,'Value',0);
set(handles.valve6,'Value',0);
set(handles.valve7,'Value',0);
set(handles.valve8,'Value',0);
guidata(hObject, handles);

% --- Executes on button press in closeAll_lines.
function closeAll_gates_Callback(hObject, eventdata, handles)
% hObject    handle to closeAll_lines (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.wago.setValves(8:15, zeros(1,8));
set(handles.valve9,'Value',0);
set(handles.valve10,'Value',0);
set(handles.valve11,'Value',0);
set(handles.valve12,'Value',0);
set(handles.valve13,'Value',0);
set(handles.valve14,'Value',0);
set(handles.valve15,'Value',0);
set(handles.valve16,'Value',0);
guidata(hObject, handles);

% --- Execute on GUI close
function closeGUI(hObject, eventdata)
data = guidata(gcbo);
data.wago.setValves(0:15, zeros(1,16));
data.wago.close();
delete(gcf);

% --- Executes on button press in openAll_lines.
function openAll_lines_Callback(hObject, eventdata, handles)
% hObject    handle to openAll_lines (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.wago.setValves(0:7, ones(1,8));
set(handles.valve1,'Value',1);
set(handles.valve2,'Value',1);
set(handles.valve3,'Value',1);
set(handles.valve4,'Value',1);
set(handles.valve5,'Value',1);
set(handles.valve6,'Value',1);
set(handles.valve7,'Value',1);
set(handles.valve8,'Value',1);
guidata(hObject, handles);

% --- Executes on button press in openAll_lines.
function openAll_gates_Callback(hObject, eventdata, handles)
% hObject    handle to openAll_lines (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.wago.setValves(8:15, ones(1,8));
set(handles.valve9,'Value',1);
set(handles.valve10,'Value',1);
set(handles.valve11,'Value',1);
set(handles.valve12,'Value',1);
set(handles.valve13,'Value',1);
set(handles.valve14,'Value',1);
set(handles.valve15,'Value',1);
set(handles.valve16,'Value',1);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
