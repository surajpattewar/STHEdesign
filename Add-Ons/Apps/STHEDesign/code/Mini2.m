function varargout = Mini2(varargin)
% MINI2 MATLAB code for Mini2.fig
%      MINI2, by itself, creates a new MINI2 or raises the existing
%      singleton*.
%
%      H = MINI2 returns the handle to a new MINI2 or the handle to
%      the existing singleton*.
%
%      MINI2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MINI2.M with the given input arguments.
%
%      MINI2('Property','Value',...) creates a new MINI2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Mini2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Mini2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Mini2

% Last Modified by GUIDE v2.5 13-Mar-2018 10:11:02

% Begin initialization code - DO NOT EDIT
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
% End initialization code - DO NOT EDIT


% --- Executes just before Mini2 is made visible.
function Mini2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Mini2 (see VARARGIN)

% Choose default command line output for Mini2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Mini2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Mini2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
h = findobj('tag','Main_Gui');
% Get default command line output from handles structure
varargout{1} = handles.output;


function listbox1_Callback(hObject, eventdata, handles)
contents = cellstr(get(hObject,'String')); 
a = contents{get(hObject,'Value')}; 
setappdata(0,'x',a);

function listbox1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit1_Callback(hObject, eventdata, handles)
 a = str2double(get(hObject,'String'));
 setappdata(0,'Low',a);

function edit1_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function edit3_Callback(hObject, eventdata, handles)
a = str2double(get(hObject,'String')) 
setappdata(0,'High',a);

function edit3_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton1_Callback(hObject, eventdata, handles)
Low = getappdata(0,'Low');
High = getappdata(0,'High');
range = (High - Low)/10 ;
Y=[];
X=[];
for i=1:10
    Low = Low + range;
    X(i)=Low;
    Y(i)=lolipop(handles,Low);
end
set(handles.text5,'String',getappdata(0,'x'));
set(handles.axes1,plot(X,Y));


function Qact = lolipop(handles,val)

Ds = getappdata(0,'Ds');
Dt = getappdata(0,'Dt');
Ltw = getappdata(0,'Ltw');
Ltp = getappdata(0,'Ltp');
Lto = getappdata(0,'Lto');
Lambda_tw = getappdata(0,'Lambda_tw');
Lambda_s = getappdata(0,'Lambda_s');
Lbo = getappdata(0,'Lbo');
Lbi = getappdata(0,'Lbi');
Lbc = getappdata(0,'Lbc');
BC = getappdata(0,'BC');
Lta = getappdata(0,'Lta');
Lti = getappdata(0,'Lti');
Eita_s = getappdata(0,'Eita_s');
Cp =  getappdata(0,'Cp');
Rho_s = getappdata(0,'Rho_s');
Lbb = getappdata(0,'Lbb');
Lsb = getappdata(0,'Lsb');
Tsi = getappdata(0,'Tsi');
Tti = getappdata(0,'Tti');
Tto = getappdata(0,'Tto');
Tso = getappdata(0,'Tso');
Ms = getappdata(0,'Ms');
Ltb = getappdata(0,'Ltb');
CB = getappdata(0,'CB');
Nss = getappdata(0,'Nss');
Ntt = getappdata(0,'Ntt');
Ntp = getappdata(0,'Ntp');
CN = getappdata(0,'CN');
Theta_tp = getappdata(0,'Theta_tp');
Eitas_T1 = getappdata(0,'Eitas_T1');
Eitas_T2 = getappdata(0,'Eitas_T2');
T1 = getappdata(0,'T1');
T2 = getappdata(0,'T2');

x = getappdata(0,'x');
if x == 'Ds'
    Ds = val;
elseif x=='Dt'
    Dt = val;
elseif x=='Ltw'
    Ltw = val;
elseif x=='Ltp'
    Ltp= val;
elseif x=='Lambda_tw'
    Lambda_tw = val;
elseif x=='Ltb'
    Ltb = val;
elseif x=='Lambda_s'
    Lambda_s = val;
elseif x=='Lbo'
    Lbo = val;
elseif x=='Ntp'
    Ntp  = val;
elseif x=='Ntt'
    Ntt = val;
elseif x=='Nss'
    Nss = val;
elseif x=='CB'
    CB = val;
elseif x=='Ntp'
    Ntp = val;
elseif x=='Theta_tp'
    Theta_tp = val;
elseif x=='Lbi'
    Lbi = val;
elseif x=='Lbc'
    Lbc =val;
elseif x=='Bc'
    BC =val;
elseif x=='Lta'
    Lta = val;
elseif x =='Lti'
    Lti = val;
elseif x=='Eita_s'
    Eita_s = val;
elseif x== 'Cp'
    Cp=val;
elseif x=='Rho_S'
    Rho_s=val;
elseif x=='Lbb'
    Lbb=val;
elseif x=='Lsb'
    Lsb=val;
elseif x=='Tsi'
    Tsi = val;
elseif x=='Tti'
    Tti = val;
elseif x=='Tto'
    Tto == val;
elseif x=='Tso'
    Tso = val;
elseif x=='Ms'
    Ms = val;
end
% Main Program Starts 
 

%remaining to add lpp according to the layout triangular square or rhombic
%function Sm=cross_flow_area()
Dotl=Ds-Lbb;
dctl=Dotl-Dt;

if (Theta_tp==30)||(Theta_tp==90)
    ltpeff=Ltp;
elseif (Theta_tp==45)
    ltpeff=0.707*Ltp;
end

Sm=Lbc*(Lbb+dctl*(Ltp-Dt)/ltpeff);

%function t=average_temperatures()
   Tsav=0.5*(Tsi+Tso);
   Ttav=0.5*(Tti+Tto);
  

%function ms=cross_flow_mass_velocity()
    ms=(Ms/Sm)*1000000;
    Res=Dt*ms/Eita_s;

%function pr=shell_side_prandtl()
    pr=(Cp*Eita_s/Lambda_s)*0.001;

%function tlm=lmtd()
    deltaT1=abs(Tsi-Tto);
    deltaT2=abs(Tso-Tti);

    lmtd=(deltaT1-deltaT2)/log(deltaT1/deltaT2);

    %function a=total_area()
    ao=pi*Dt*Lta*Ntt;

%function theta=segmental_baffle_window()
    theta_Ds=2*acosd(1-2*BC/100);
    theta_ctl=2*acosd((Ds/dctl)*(1-2*BC/100));
    theta_otl=2*acosd((Ds/Dotl)*(1-2*BC/100));
    %end

%function swg=baffle_flow_areas()
    swg=(pi/4)*Ds*Ds*(((theta_Ds)/360)-(sind(theta_Ds))/(2*pi));
    fw=(((theta_ctl)/360)-(sind(theta_ctl)/(2*pi)));
    Fc=1-2*fw;
    swt=Ntt*fw*(pi*Dt*Dt/4);
    ntw=Ntt*fw;
    Sw=swg-swt;
%end
%function dw=equivalent_dia_baffle_window()
    dw=4*Sw/(pi*Dt*ntw+pi*Ds*theta_Ds/360);
%end
%lpp tablewise
if Theta_tp==30
    lpp=0.866*Ltp;
%elseif Theta_tp==45
 %   lpp=
%elseif Theta_tp==90
 %   lpp=
end
%function [ncc,Ntcw]=nof_effective_tubes()
    Ntcc=Ds*(1-2*BC/100)/lpp;
    lwp=0.4*(Ds*BC/100-(Ds-dctl)/2);
    Ntcw=(0.8/lpp)*((Ds*BC/100)-(Ds-dctl)/2);
%end

%function Nb=number_baffles()
%lts=0.5*Ds*power(ps/sigma_s,0.5);
%if CB=="UT"
%    Lti=Lto-lts;
 %   end;
    %else;
    %Lti=Lto-lts;
%end
     Nb=round(((Lti/Lbc)-1),0);
%end

%function [sb,Fsbp] = bundle_shell_bypass_area()
%actual lp to be found out from drawing of construction of heat exchanger
%default lp
%    lp=Dt;
    Lp=0.0127;
    lpl=Lp/2;  
    sb=Lbc*((Ds-Dotl)+lpl);
    Fsbp=sb/Sm;
%end

%function ssb=shell_baffle_leakage_area()
    ssb=pi*Ds*(Lsb/2)*(360-theta_Ds)/360;
%end

%function stb=tube_baffle_hole_leakage()
    
    stb=((pi/4)*((Dt+Ltb)*(Dt+Ltb)-Dt*Dt))*(Ntt*(1-fw));
%end
%correction factors for baffle leakage effects for heat transfer Jl and
%pressure drop Rl
rlm=(ssb+stb)/Sm;
rs=ssb/(ssb+stb);

jl=0.44*(1-rs)+(1-0.44*(1-rs))*exp(-2.2*rlm);
p=(-0.15*(1+rs)+0.8); 
Rl=exp(-1.33*(1+rs)*power(rlm,p));
%correction factors for bundle bypass effects for heat transfer,Jb &
%pressure transfer Rb
Fsbp=sb/Sm;
rss=Nss/Ntcc;
if Res<=100
    cbh=1.35;
else
    cbh=1.25;
end
jb=exp(-cbh*Fsbp*(1-power(2*rss,(1/3))));
if Res<=100
    cbp=4.5;
else
    cbp=3.7;
end
%if rss>=+0.
Rb=exp(-1*cbp*Fsbp*(1-power(2*rss,1.5)));
%else
 %   Rb=1
%end

%Correction factor Rs
if Res <100
    n=1;
else
    n=0.2;
end
Rs=power((Lbc/Lbo),2-n)+power((Lbc/Lbi),2-n);
 

    %heat transfer correction factor for adverse temperature gradient in
%laminar flow
Nc =(Ntcc+Ntcw)*(Nb+1);
jrr=1.51/power(Nc,0.18);
if Res<=20
   jr=jrr;
elseif Res<=100
     jr=jrr+(20-Res)*(jrr-1)/80;
else
     jr=1;
end
%heat transfer correction for unequal baffle spacing at inlet and outlet Js
li=Lbi/Lbc;
lo=Lbo/Lbc;
n=0.6;
js=(Nb-1+power(li,(1-n))+power(lo,(1-n)))/(Nb-1+li+lo);

%correction factor for baffle configuration effect
%if 15-45% baffle cut preseent linear approximation is given by the
%following equation
%fuNction jc=baffle_window_correction()
%jc=0.55+0.72Fc;
%end
%Improved delaware Method
if Fc<=0.9
    A=0.533574545;
    B=0.69059596;
    C=0.290909091;
    D=-0.295959596;
    E=0;
else 
    A=-27.84837787;
    B=152.5274893;
    C=-301.9699773;
    D=265.12743360;
    E=-86.76640715;
end
    
jc=A+B*Fc+C*Fc*Fc+D*Fc*Fc*Fc+E*Fc*Fc*Fc*Fc;

%correction factor ji
const=[[0.627615,-0.69064,-0.0507472,0.0141049,-0.000937714,1.7683*power(10,-5)]
        [0.374177,-0.671577,-0.0784051,0.02507191,-0.00224983,0.0000673254]
        [-0.273166,-0.472896,-0.109701,0.023299,-0.00145983,0.0000242675]];

if Theta_tp==30
    attribute=const(1,:);
elseif Theta_tp==90
    attribute=const(2,:);
elseif Theta_tp==45
    attribute=const(3,:);
end
exponent=attribute(1)+attribute(2)*log(Res)+2*attribute(3)*...
    log(Res)+3*attribute(4)*log(Res)+4*attribute(5)*log(Res);
        ji = exp(exponent);
        
A1=[[0.321,0.3321,0.593,1.360,1.400],[0.370,0.370,0.730,0.498,1.550],[0.370,0.107,0.408,0.900,0.970]];
A2=[[-0.388,-0.388,-0.477,-0.657,-0.667],[-0.396,-0.396,-0.500,-0.656,-0.667],[-0.395,-0.266,-0.460,-0.631,-0.667]];
A3=[1.450,1.930,1.187];
A4=[0.519,0.500,0.370];
if(Theta_tp==30)
    i=1;
elseif(Theta_tp==45)
    i=2;
elseif(Theta_tp==90)
    i=3;
end

if (Res<100000)&&(Res>10000)
    j=1;
elseif (Res<10000)&&(Res>1000)
    j=2;
elseif (Res<1000)&&(Res>100)
    j=3;
elseif (Res<100)&&(Res>10)
    j=4;
elseif (Res<10)
    j=5;
end
a1=A1(i,j);
a2=A2(i,j);
a3=A3(i);
a4=A4(i);
a=a3/(1+0.14*power(Res,a4));
ji=a1*(power((1.33*Dt/Ltp),a))*(power(Res,a2));

%correction factor fi
%By interpolation obtain Eitas_s
b = log(Eitas_T1/Eitas_T2)/log(T1/T2);
a = Eitas_T1/power(T1,b);
Eitas_s = a * power(Tsav,b);

%if liquid flows
%if both thermal diffussivity on tube side and eitas @tube wall temperature
%is given then use following formulas
alpha_s=1000;
alpha_t=6000;
Twall=Ttav+(Tsav-Ttav)/(1+alpha_t/alpha_s);

Eita_sw=((Twall-T1)*Eitas_T2+(T2-Twall)*Eitas_T1)/(T2-T1);
%and 
%if eitas @tub wall temperature is not given and thermal diffusivity on tube side is not given  
% say_s is viscosity correction factor fi_s raise to 0.14


Phi_s = Eitas_s/Eita_sw;
say_s=power(Phi_s,0.14);
%if gas flows
%for gas being cooled
%say_s=1
%for gas being heated
%say_s=power(0.25,(Tsav+273)/(temperatureofwall+273))
%Correction factor fi
B1=[[0.372,0.486,4.570,45.100,48.000],[0.393,0.333,3.5,26.2,32.0],[0.391,0.0815,6.09,32.1,335]];
B2=[[-0.123,-0.152,-0.476,-0.973,-1],[-0.126,-0.136,-0.476,-0.913,-1],[-0.148,0.022,-0.602,-0.963,-1]];
B3=[7,6.59,6.30];
B4=[0.5,0.520,0.378];

if(Theta_tp==30)
    i=1;
elseif(Theta_tp==45)
    i=2;
elseif(Theta_tp==90)
    i=3;
end
if (Res<100000)&&(Res>10000)
    j=1;
elseif (Res<10000)&&(Res>1000)
    j=2;
elseif (Res<1000)&&(Res>100)
    j=3;
elseif (Res<100)&&(Res>10)
    j=4;
elseif (Res<10)
    j=5;
end
b1=B1(i,j);
b2=B2(i,j);
b3=B3(i);
b4=B4(i);
b=b3/(1+0.14*power(Res,b4));
fi=b1*(power((1.33*Dt/Ltp),b))*(power(Res,b2));
alpha_i=ji*Cp*ms*(power(pr,-2/3))*say_s;
alpha_s=alpha_i*jc*jl*jb*jr*js;



%Pressur loss Correction factor by recirculation Rb
%improved Delaware method
mat = [0.999999956 0.02427714 -0.2498571 0.87688954 -0.9389413 -3.7854133 42.7281376 -285.42201 841.836875 -823.25082 6.9400004 -114.27156 831.289197 -2493.3366 2464.67857 -7.1165478 129.6448 -995.82525 3071.9304 -3083.9014 3.21390213 -60.119316 480.616728 -1521.5693 1550.23124; 0.9989929 0.10536115 0.8164392 2.13589149 1.8323906 4.7393642 60.6001915 402.43318 1138.26259 1075.7794 11.8151337 238.94173 1739.20139 4979.2121 4724.16651 17.614757 423.093405 3227.2538 9354.34611 8902.6809 11.6766845 302.46692 2376.53333 6980.2925 6687.42629];
   
if Res > 100
    i=1;
else 
    i=2;
end
N2 = Nss/Nc;
Rb = (mat(i,1)+ mat(i,2)*N2 + mat(i,3)*power(N2,2) + mat(i,4)*power(N2,3)+ mat(i,5)*power(N2,4) )+...
 (mat(i,6)+ mat(i,7)*power(N2,1)+ mat(i,8)*power(N2,2)+ mat(i,9)*power(N2,3)+ mat(i,10)*power(N2,4))*Fsbp +...
 (mat(i,11)+ mat(i,12)*power(N2,1)+ mat(i,13)*power(N2,2)+ mat(i,14)*power(N2,3)+ mat(i,15)*power(N2,4))*power(Fsbp,2)+...
 (mat(i,16)+ mat(i,17)*power(N2,1)+ mat(i,18)*power(N2,2)+ mat(i,19)*power(N2,3)+ mat(i,20)*power(N2,4))*power(Fsbp,3)+...
(mat(i,21)+ mat(i,22)*power(N2,1)+ mat(i,23)*power(N2,2)+ mat(i,24)*power(N2,3)+ mat(i,25)*power(N2,4))*power(Fsbp,4);    

% Correction factor for uneven spacing in baffles

% Pressure drop across ideal tube bank

Delta_Pbi = ( 0.0002 * Ntcc * ms * ms )/(say_s * Rho_s);

% To Determine Pressure drop across
Delta_Pc = Delta_Pbi*(Nb-1)*Rb*Rl;
 % To determine window mass flow velocity
 Mw = Ms*power(10,6) / sqrt(Sm*Sw);
Delta_Pw = Nb *power(10,-3)* (2+0.6*Ntcw) * Mw * Mw * Rl/(2*Rho_s);
% Pressure drop in inlet and outlet baffle is
Delta_Pe = Delta_Pbi *(1+Ntcw/Ntcc)*Rb*Rs;

% Total shell side pressure drop
Delta_Ps=Delta_Pe+Delta_Pc+Delta_Pw;

%Overall heat exchanger performance
alpha_t;
Ao=pi*Dt;
Ai=pi*(Dt-2*Ltw);
Rw = Ltw*power(10,-3)/Lambda_tw;
Ro=(1/alpha_s)+(Ao/(alpha_t*Ai))+Rw;
Uo = 1/Ro;
Ao=pi*Dt*Lta*Ntt*power(10,-6);
%Actual heat transfer 
Qact = Ao * Uo * lmtd ;


function pushbutton2_Callback(hObject, eventdata, handles)
close(Mini2);


function pushbutton4_Callback(hObject, eventdata, handles)
Mini;
