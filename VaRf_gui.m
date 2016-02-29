function varargout = VaRf_gui(varargin)
% VARF_GUI MATLAB code for VaRf_gui.fig
%      VARF_GUI, by itself, creates a new VARF_GUI or raises the existing
%      singleton*.
%
%      H = VARF_GUI returns the handle to a new VARF_GUI or the handle to
%      the existing singleton*.
%
%      VARF_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VARF_GUI.M with the given input arguments.
%
%      VARF_GUI('Property','Value',...) creates a new VARF_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VaRf_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VaRf_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VaRf_gui

% Last Modified by GUIDE v2.5 27-Feb-2016 22:48:22

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VaRf_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @VaRf_gui_OutputFcn, ...
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


% --- Executes just before VaRf_gui is made visible.
function VaRf_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VaRf_gui (see VARARGIN)

% Choose default command line output for VaRf_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VaRf_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VaRf_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function inputH_Callback(hObject, eventdata, handles)
% hObject    handle to inputH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputH as text
%        str2double(get(hObject,'String')) returns contents of inputH as a double
hurst = str2double(get(hObject, 'String'));
if isnan(hurst)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new hurst value
handles.input.hurst = hurst;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputH_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputH (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputR_Callback(hObject, eventdata, handles)
% hObject    handle to inputR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputR as text
%        str2double(get(hObject,'String')) returns contents of inputR as a double
taux = str2double(get(hObject, 'String'));
if isnan(taux)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new taux value
handles.input.taux = taux;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputCI_Callback(hObject, eventdata, handles)
% hObject    handle to inputCI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputCI as text
%        str2double(get(hObject,'String')) returns contents of inputCI as a double
CI = str2double(get(hObject, 'String'));
if isnan(CI)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new CI value
handles.input.CI = CI;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputCI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputCI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputS0_Callback(hObject, eventdata, handles)
% hObject    handle to inputS0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputS0 as text
%        str2double(get(hObject,'String')) returns contents of inputS0 as a double
S0 = str2double(get(hObject, 'String'));
if isnan(S0)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new S0 value
handles.input.S0 = S0;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputS0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputS0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputSigma_Callback(hObject, eventdata, handles)
% hObject    handle to inputSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputSigma as text
%        str2double(get(hObject,'String')) returns contents of inputSigma as a double
sigma = str2double(get(hObject, 'String'));
if isnan(sigma)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new sigma value
handles.input.sigma = sigma;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputSigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputSigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inputW_Callback(hObject, eventdata, handles)
% hObject    handle to inputW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputW as text
%        str2double(get(hObject,'String')) returns contents of inputW as a double
W = str2double(get(hObject, 'String'));
if isnan(W)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new W value
handles.input.W = W;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function inputW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in VaRf.
function VaRf_Callback(hObject, eventdata, handles)
% hObject    handle to VaRf (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
H = handles.input.hurst;
result = VaRf(H,handles.input.taux,handles.input.CI,handles.input.Nd,handles.input.S0,handles.input.sigma,handles.input.W);
set(handles.result, 'String', result);

function result_Callback(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of result as text
%        str2double(get(hObject,'String')) returns contents of result as a double


% --- Executes during object creation, after setting all properties.
function result_CreateFcn(hObject, eventdata, handles)
% hObject    handle to result (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Nd_Callback(hObject, eventdata, handles)
% hObject    handle to Nd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Nd as text
%        str2double(get(hObject,'String')) returns contents of Nd as a double
Nd = str2double(get(hObject, 'String'));
if isnan(Nd)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new Nd value
handles.input.Nd = Nd;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function Nd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
