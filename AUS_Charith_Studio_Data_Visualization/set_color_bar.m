function [ ] = set_color_bar( )
% Add black color to capture extream values
% Select from here http://uk.mathworks.com/help/matlab/ref/colormap.html
    colormap jet;
    map = colormap; 
    map(1,:) = [0,0,0];
    colormap(map);
    
% Set the color bar scale
    upper_limit = -50;
    lower_limit = -110;
    caxis([lower_limit, upper_limit]);
    colorbar;
end

