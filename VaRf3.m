function varargout = VaRf3(varargin)
% VARF3 MATLAB code for VaRf3.fig
%      VARF3, by itself, creates a new VARF3 or raises the existing
%      singleton*.
%
%      H = VARF3 returns the handle to a new VARF3 or the handle to
%      the existing singleton*.
%
%      VARF3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VARF3.M with the given input arguments.
%
%      VARF3('Property','Value',...) creates a new VARF3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VaRf3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VaRf3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VaRf3

% Last Modified by GUIDE v2.5 28-Feb-2016 23:40:10

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VaRf3_OpeningFcn, ...
                   'gui_OutputFcn',  @VaRf3_OutputFcn, ...
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


% --- Executes just before VaRf3 is made visible.
function VaRf3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VaRf3 (see VARARGIN)

% Choose default command line output for VaRf3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VaRf3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VaRf3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function rho1_Callback(hObject, eventdata, handles)
% hObject    handle to rho1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rho1 as text
%        str2double(get(hObject,'String')) returns contents of rho1 as a double
global rho1;
rho1 = str2double(get(hObject, 'String'));
if isnan(rho1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new rho1 value
harho1les.input.rho1 = rho1;
guidata(hObject,harho1les)

% --- Executes during object creation, after setting all properties.
function rho1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rho1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S1_Callback(hObject, eventdata, handles)
% hObject    handle to S1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S1 as text
%        str2double(get(hObject,'String')) returns contents of S1 as a double
global S1;
S1 = str2double(get(hObject, 'String'));
if isnan(S1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new S1 value
haS1les.input.S1 = S1;
guidata(hObject,haS1les)

% --- Executes during object creation, after setting all properties.
function S1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma1_Callback(hObject, eventdata, handles)
% hObject    handle to sigma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma1 as text
%        str2double(get(hObject,'String')) returns contents of sigma1 as a double
global sigma1;
sigma1 = str2double(get(hObject, 'String'));
if isnan(sigma1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new sigma1 value
hasigma1les.input.sigma1 = sigma1;
guidata(hObject,hasigma1les)

% --- Executes during object creation, after setting all properties.
function sigma1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W1_Callback(hObject, eventdata, handles)
% hObject    handle to W1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W1 as text
%        str2double(get(hObject,'String')) returns contents of W1 as a double
global W1;
W1 = str2double(get(hObject, 'String'));
if isnan(W1)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new W1 value
haW1les.input.W1 = W1;
guidata(hObject,haW1les)

% --- Executes during object creation, after setting all properties.
function W1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S2_Callback(hObject, eventdata, handles)
% hObject    handle to S2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S2 as text
%        str2double(get(hObject,'String')) returns contents of S2 as a double
global S2;
S2 = str2double(get(hObject, 'String'));
if isnan(S2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new S2 value
haS2les.input.S2 = S2;
guidata(hObject,haS2les)

% --- Executes during object creation, after setting all properties.
function S2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma2_Callback(hObject, eventdata, handles)
% hObject    handle to sigma2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma2 as text
%        str2double(get(hObject,'String')) returns contents of sigma2 as a double
global sigma2;
sigma2 = str2double(get(hObject, 'String'));
if isnan(sigma2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new sigma2 value
hasigma2les.input.sigma2 = sigma2;
guidata(hObject,hasigma2les)

% --- Executes during object creation, after setting all properties.
function sigma2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W2_Callback(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W2 as text
%        str2double(get(hObject,'String')) returns contents of W2 as a double
global W2;
W2 = str2double(get(hObject, 'String'));
if isnan(W2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new W2 value
haW2les.input.W2 = W2;
guidata(hObject,haW2les)

% --- Executes during object creation, after setting all properties.
function W2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function S3_Callback(hObject, eventdata, handles)
% hObject    handle to S3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of S3 as text
%        str2double(get(hObject,'String')) returns contents of S3 as a double
global S3;
S3 = str2double(get(hObject, 'String'));
if isnan(S3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new S3 value
haS3les.input.S3 = S3;
guidata(hObject,haS3les)

% --- Executes during object creation, after setting all properties.
function S3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to S3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function sigma3_Callback(hObject, eventdata, handles)
% hObject    handle to sigma3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sigma3 as text
%        str2double(get(hObject,'String')) returns contents of sigma3 as a double
global sigma3;
sigma3 = str2double(get(hObject, 'String'));
if isnan(sigma3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new sigma3 value
hasigma3les.input.sigma3 = sigma3;
guidata(hObject,hasigma3les)

% --- Executes during object creation, after setting all properties.
function sigma3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sigma3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function W3_Callback(hObject, eventdata, handles)
% hObject    handle to W3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of W3 as text
%        str2double(get(hObject,'String')) returns contents of W3 as a double
global W3;
W3 = str2double(get(hObject, 'String'));
if isnan(W3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new W3 value
haW3les.input.W3 = W3;
guidata(hObject,haW3les)

% --- Executes during object creation, after setting all properties.
function W3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to W3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function hurst_Callback(hObject, eventdata, handles)
% hObject    handle to hurst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of hurst as text
%        str2double(get(hObject,'String')) returns contents of hurst as a double
global hurst;
hurst = str2double(get(hObject, 'String'));
if isnan(hurst)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new hurst value
handles.input.hurst = hurst;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function hurst_CreateFcn(hObject, eventdata, handles)
% hObject    handle to hurst (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taux_Callback(hObject, eventdata, handles)
% hObject    handle to taux (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taux as text
%        str2double(get(hObject,'String')) returns contents of taux as a double
global taux;
taux = str2double(get(hObject, 'String'));
if isnan(taux)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new taux value
handles.input.taux = taux;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function taux_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taux (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function CI_Callback(hObject, eventdata, handles)
% hObject    handle to CI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of CI as text
%        str2double(get(hObject,'String')) returns contents of CI as a double
global CI;
CI = str2double(get(hObject, 'String'));
if isnan(CI)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new CI value
handles.input.CI = CI;
guidata(hObject,handles)

% --- Executes during object creation, after setting all properties.
function CI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to CI (see GCBO)
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
global Nd;
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% guidata(hObject, handles);
% H = handles.input.hurst;
% R = handles.input.taux;
% CI = handles.input.CI;
% Nd = handles.input.Nd;
% n = 3;
% MS(:,1) = [handles.input.S1,handles.input.sigma1,handles.input.W1];
% MS(:,2) = [handles.input.S2,handles.input.sigma2,handles.input.W2];
% MS(:,3) = [handles.input.S3,handles.input.sigma3,handles.input.W3];
% MC(:,1) = [1,handles.input.rho1,handles.input.rho3];
% MC(:,2) = [handles.input.rho1,1,handles.input.rho2];
% MC(:,3) = [handles.input.rho3,handles.input.rho2,1];
% varf3 = VaRfn(H,R,CI,Nd,n,MS,MC);

global hurst;
global taux;
global CI;
global Nd;
n = 3;
global S1;
global sigma1;
global W1;
global S2;
global sigma2;
global W2;
global S3;
global sigma3;
global W3;
global rho1;
global rho2;
global rho3;
H = hurst;
R = taux;
MS(:,1) = [S1,sigma1,W1];
MS(:,2) = [S2,sigma2,W2];
MS(:,3) = [S3,sigma3,W3];
MC(:,1) = [1,rho1,rho3];
MC(:,2) = [rho1,1,rho2];
MC(:,3) = [rho3,rho2,1];
result = VaRfn(H,R,CI,Nd,n,MS,MC);
handles = guihandles(gcf);
set(handles.varf3, 'String', result);


function varf3_Callback(hObject, eventdata, handles)
% hObject    handle to varf3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of varf3 as text
%        str2double(get(hObject,'String')) returns contents of varf3 as a double


% --- Executes during object creation, after setting all properties.
function varf3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to varf3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rho2_Callback(hObject, eventdata, handles)
% hObject    handle to rho2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rho2 as text
%        str2double(get(hObject,'String')) returns contents of rho2 as a double
global rho2;
rho2 = str2double(get(hObject, 'String'));
if isnan(rho2)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new rho2 value
harho2les.input.rho2 = rho2;
guidata(hObject,harho2les)

% --- Executes during object creation, after setting all properties.
function rho2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rho2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rho3_Callback(hObject, eventdata, handles)
% hObject    handle to rho3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rho3 as text
%        str2double(get(hObject,'String')) returns contents of rho3 as a double
global rho3;
rho3 = str2double(get(hObject, 'String'));
if isnan(rho3)
    set(hObject, 'String', 0);
    errordlg('Input must be a number','Error');
end

% Save the new rho3 value
harho3les.input.rho3 = rho3;
guidata(hObject,harho3les)

% --- Executes during object creation, after setting all properties.
function rho3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rho3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function uipanel2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
guidata(hObject, handles)


% --- Executes during object creation, after setting all properties.
function uipanel3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
guidata(hObject, handles)


% --- Executes during object creation, after setting all properties.
function uipanel4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
guidata(hObject, handles)
