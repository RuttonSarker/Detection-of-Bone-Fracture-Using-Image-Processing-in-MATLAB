function varargout = SuperiorExtremity(varargin)
% SUPERIOREXTREMITY MATLAB code for SuperiorExtremity.fig
%      SUPERIOREXTREMITY, by itself, creates a new SUPERIOREXTREMITY or raises the existing
%      singleton*.
%
%      H = SUPERIOREXTREMITY returns the handle to a new SUPERIOREXTREMITY or the handle to
%      the existing singleton*.
%
%      SUPERIOREXTREMITY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SUPERIOREXTREMITY.M with the given input arguments.
%
%      SUPERIOREXTREMITY('Property','Value',...) creates a new SUPERIOREXTREMITY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before SuperiorExtremity_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to SuperiorExtremity_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help SuperiorExtremity

% Last Modified by GUIDE v2.5 18-Aug-2021 23:11:39

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @SuperiorExtremity_OpeningFcn, ...
                   'gui_OutputFcn',  @SuperiorExtremity_OutputFcn, ...
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


% --- Executes just before SuperiorExtremity is made visible.
function SuperiorExtremity_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to SuperiorExtremity (see VARARGIN)

% Choose default command line output for SuperiorExtremity
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes SuperiorExtremity wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = SuperiorExtremity_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in input_image_button.
function input_image_button_Callback(hObject, eventdata, handles)
% hObject    handle to input_image_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename, pathname] = uigetfile({'*.jpg';'*.bmp';'*.png''*.jpeg'},'File Selector');
fullFileName = fullfile(pathname, filename);
handles.myImage = imread(fullFileName); % attending to the 2nd answer of post
axes(handles.axes_inputImage);
imshow(handles.myImage)
% Save in user data
img = handles.myImage;
data_image= struct('img',img);
hObject.UserData = data_image;
% save the updated handles object
clear axes scale
axis off
guidata(hObject,handles);


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
