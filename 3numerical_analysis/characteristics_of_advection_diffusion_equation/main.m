%%
clc; clear;
leftbound=-20; rightbound=20; meshpoint=2000;
stressmesh=linspace(leftbound, rightbound, meshpoint);
% standard normal assumption;
u00=exp(-stressmesh.*stressmesh/2)/sqrt(2*pi); 
timestart=0; dt=0.01;
N1=100;  N2=-0.20;        

 [sol]=solve_FPK(u00, N1, N2, timestart, dt, leftbound, rightbound, meshpoint);
 
 %%
 
 plot(stressmesh, u00, 'b'); hold on;
 plot(stressmesh, sol, 'k'); grid on;
 legend('initial condition at t=0', 'solution at t=0.01' )
 title('N_1=100, N_2=-0.2')
 
 %%
 mean1=sum( stressmesh.*sol )* (stressmesh(2)-stressmesh(1));
std1=sqrt( sum( (stressmesh-mean1 ).^2.*sol )*(stressmesh(2)-stressmesh(1)) );