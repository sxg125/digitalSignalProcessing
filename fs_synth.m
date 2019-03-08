function [x,t] = fs_synth(fk, ak, fs, dur, tstart)
% [x,t] = fs_synth(fk, ak, fs, dur, tstart)
%
% Mark Wickert, September 2006
if nargin < 5, % argument is smaller than 5
 tstart = 0;
end
t = tstart:1/fs:dur;
x = zeros(size(t));
for k=1:length(fk)
 x = x + ak(k)*exp(j*2*pi*fk(k)*t);
end
