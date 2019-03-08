% 3-point Moving Average Filter
 n= -3:5;
 x = [0 0 -1 2 4 6 4 0 0];
 y = filter(1/3*[1 1 1],1,x)   % vector of feedforward filter coefficients,
                               % vector of feedback filter coefficeints,
                               % 1 for FIR, and input signal
  figure
  stem(n,y,'filled')

  figure
  % 7-point moving average filter
  n7 = -5:50;
  x7 = [zeros(1,5), rand(1,41)-1/2, zeros(1,10)]; % input random noise
  y7 = filter(ones(1,7)/7,1,x7)
  stem(n7,y7,'filled')
  