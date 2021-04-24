clear; clf;

cd retrograde;
files = dir('*0*');
i=1;
% tiledlayout(6,1,'Padding','tight')
for file = files'
    out = load(file.name);

    t =out(:,1); % time 
    xp=out(:,2); % the position of the primary star
    yp=out(:,3);
    xs=out(:,4); % the position of the secondary star
    ys=out(:,5); 
    Ep=out(:,6); % the energy of the primary star
    Es=out(:,7); % the energy of the secondary star

    plot(xp,yp,'DisplayName','Primary');
    hold on;
    plot(xs,ys,'DisplayName','Secondary');
    hold on;
    plot(0,0,'o','MarkerSize',5.5, 'MarkerFaceColor', ...
         'black','DisplayName','Black hole') 
    axis equal;
    xlabel('x','FontSize',15);
    ylabel('y','FontSize',15);
    legend;
    
    % plot(t,Ep,'DisplayName','Primary');
    % hold on;
    % plot(t,Es,'DisplayName','Secondary');
    % xlabel('time','FontSize',15);
    % ylabel('Energy','FontSize',15);
    % legend('location','best');

    title(strcat('D = ',file.name))
    hold off
    exportgraphics(gcf,strcat('../../plots/3f/retrograde_energies/', ...
                   string(i),'.png'),'Resolution',300)
    figure;
    i=i+1
end
cd ..

% f=gcf;
% 
% exportgraphics(f,'retro_orbits.png','Resolution',300, )

% out=load('out'); % load the data file out
% t =out(:,1); % time 
% xp=out(:,2); % the position of the primary star
% yp=out(:,3);
% xs=out(:,4); % the position of the secondary star
% ys=out(:,5); 
% Ep=out(:,6); % the energy of the primary star
% Es=out(:,7); % the energy of the secondary star
% 
% 
% plot(xp,yp,'DisplayName','Primary');
% hold on;
% plot(xs,ys,'DisplayName','Secondary');
% hold on;
% plot(0,0,'o','MarkerSize',5.5, 'MarkerFaceColor', 'black','DisplayName','Black hole') 
% axis equal;
% xlabel('x','FontSize',15);
% ylabel('y','FontSize',15);
% legend;
% 
% plot(xs-xp,ys-yp);
% axis equal;
% xlabel('x','FontSize',15);
% ylabel('y','FontSize',15);
% 
% plot(t,Ep,'DisplayName','Primary');
% hold on;
% plot(t,Es,'DisplayName','Secondary');
% xlabel('time','FontSize',15);
% ylabel('Energy','FontSize',15);
% legend('location','best');