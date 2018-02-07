function [sw2D] = make2Dsinewave(amp, orientation, size_ap,sf)
%creates a two dimensional sinewave of size size_ap 
%[sw2D] = make2Dsinewave(amp, freq, size_ap,sf))
%
%returns a sizewave scaled between -1 and 1 

[X, Y]=meshgrid(linspace(-pi, pi, size_ap));

R = cos(orientation+ X) * (sin(orientation) * Y);

sinewave = sin(R * sf); 
oneM = ones(size(sinewave)): 
sw2d = amp * sin(R .* sf) ; 

end 




