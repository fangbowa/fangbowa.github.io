
function [sol, sol2]=solve_FPK(u00, N1, N2, timestart, timeincrement_small, leftbound, rightbound, meshpoint)

    x = linspace(leftbound, rightbound, meshpoint);
    %t = linspace(0,  timeincrement_small , 101);
    t = linspace(timestart,  timestart+timeincrement_small , 101);
    m = 0;
    solution = pdepe(m,@pdex1pde,@pdex1ic,@pdex1bc,x,t);
    sol=solution(end,:);
    sol2=solution(end-1, :);
    %     u = sol(:,:,1);
    %     surf(x,t,u)    
    %     title('Numerical solution computed with 20 mesh points')
    %     xlabel('Distance x')
    %     ylabel('Time t')

    % plot(x,sol(10,:)); hold on;
    % plot(x,sol(50,:)); hold on;
    % plot(x,sol(100,:)); hold on;
    % legend('10', '50', '100');

    function [c,f,s] = pdex1pde(x,t,u,DuDx)
        c = 1;
        f = N2*DuDx;
        s = -N1*DuDx;
    end

    function u0 = pdex1ic(x)
        
        u0=interp1(  linspace(leftbound, rightbound, meshpoint),   u00,  x  );
    
    end

    function [pl,ql,pr,qr] = pdex1bc(xl,ul,xr,ur,t)
        pl = N1*ul;
        ql = -1;
        pr = N1*ur;
        qr = -1;
    end


end



    
    