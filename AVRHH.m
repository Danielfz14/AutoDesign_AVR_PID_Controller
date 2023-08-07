function fcost=AVRHH(x1,x2,x3)
kp=x1; 
ki=x2; 
kd=x3; 

format long 
options = simset('SrcWorkspace','current');
simout=sim('AVRHH1',[],options);
Vout=simout.Vout;
t=simout.tout;
H=stepinfo(Vout,t)
Ts=H.SettlingTime;
Tr=H.RiseTime;
L = H.Overshoot /100;
% control error of step response
e=1-Vout;
fcost=(1-exp(-0.8))*abs(L+e(end))+exp(-0.8)*abs(Ts-Tr);


%%
% 
% Gp=tf([0.1*kd (0.1*kp+10*kd) (0.1*ki+10*kp) 10*ki],[0.0004 0.0454 0.555 (1.51+10*kd) (1+10*kp) 10*ki]);
% t=0:0.01:4;
% vout=step(Gp,t);
% H=stepinfo(Gp)
% Ts=H.SettlingTime;
% L = H.Overshoot/100;
% Tr=H.RiseTime;
% e=abs(1-vout);
% %fcost=(1-exp(-0.8))*abs(L+e(end))+exp(-0.8)*abs(Ts-Tr);



end

