% This is the first code that you will need to complete Problem 4 for P-Set
% 3.  This code and the code systemPS3.m will be used to simulate the
% system presented in the problem statement.  In its original state it will
% solve the ode x_dot = r-x.  You will need to tweak various portions of
% the code to complete the problem.

% This code is the "solver"  it takes in the initial condition and uses the
% function ode45 to numerically solve the system of equations which are in
% the "system" file which in this case is systemPS3.m.

% After you input modify the parameter and the system, select the initial
% condition and run the code.  Within the work environment you will have a
% couple new variables T and Y which are the time and system values as a
% function of time.  You will be responsible for creating a couple of
% plots.  You can either write the codes in the Command Window or you can
% add your lines of code to the bottom of this code.

xInitial = 0:.25:1.5;
yInitial = 0:.25:1.5;

subplot(1,2,1)
for i = 1:length(xInitial)
    for j = 1:length(yInitial)

        [T,Y] = ode45(@systemPS4,[0:.1:10],[xInitial(i), yInitial(j)]); % This is the solving command line.  
                    % It has a couple inputs that you should understand.  These
                    % are discussed in the MATLAB Primer.

        %  If you want the code to create the plot after it solves the system you
        %  should input your lines of code here.

        plot(Y(:,2),Y(:,1),'k','LineWidth',2)
        axis([0 4 0 4])
        hold on

    end
end

xlabel('$$P$$','FontSize',16,'interpreter','latex')
ylabel('$$Z$$','FontSize',16,'interpreter','latex')
title('$$(a = 1, b = 1, c = 1, d = 1)$$','FontSize',16,'interpreter','latex')
set(gca,'FontSize',14)
