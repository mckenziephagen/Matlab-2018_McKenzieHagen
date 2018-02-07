function [mat] = putinaperture(mat,rad, backlum)
%takes a matrix and windows it with a circulure aperture 
% of radius radus 
% [ mat ] = putinaperature ( mat, rad, backlum) 
[X, Y]=meshgrid(linspace(-pi, pi, size(mat(1))));

if
strcmp(type, 'circular') 
    mat(find(X.^2 +Y.^2 >rad^2)_ = 0;
else if strcmp(type, 'gaussian') 
        mat = mat.*exp(-(X.^2+Y.^2)/sd.^2)
    else 
        errordlg('aperature type not recongized') 

end

