function varargout = Function(varargin)
% FUNCTION MATLAB code for Function.fig
%      FUNCTION, by itself, creates a new FUNCTION or raises the existing
%      singleton*.
%
%      H = FUNCTION returns the handle to a new FUNCTION or the handle to
%      the existing singleton*.
%
%      FUNCTION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FUNCTION.M with the given input arguments.
%
%      FUNCTION('Property','Value',...) creates a new FUNCTION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Function_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Function_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Function

% Last Modified by GUIDE v2.5 03-Aug-2021 22:22:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Function_OpeningFcn, ...
                   'gui_OutputFcn',  @Function_OutputFcn, ...
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


% --- Executes just before Function is made visible.
function Function_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Function (see VARARGIN)

% Choose default command line output for Function
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Function wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Function_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% exit button callback function
closereq();


% --- Executes on button press in button_superior_extremity.
function button_superior_extremity_Callback(hObject, eventdata, handles)
% hObject    handle to button_superior_extremity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
SuperiorExtremity


% --- Executes on button press in button_inferior_extremity.
function button_inferior_extremity_Callback(hObject, eventdata, handles)
% hObject    handle to button_inferior_extremity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
