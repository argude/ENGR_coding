# Exercise 1, i)
function [gvector, erra, gm, erram, theta]=gravity(t0, tp, input_datafile)
# Calculate gravity vector gvector and the error vector erram
# Calculate the magnituce of the gravity and the magnitude of the error
# in a time interval.
# t0: initial time
# tp: end time
# input_datafile: data file

# Load the data with function load from Octave
data=load(input_datafile);
dt=data(:,4)*1e-3; # change ms to s
# create a time array initialized to 0
t=zeros(1,length(dt));
# calculate time with a loop
for i=1:length(dt)
    t(i)=sum(dt(1:i));
endfor

# calculation of the indexes
# to access the data in the array
i0=min(find(t>=t0));
ip=max(find(t<=tp));

# average acceleration and error
gvector= -mean(data(i0:ip,1:3));
erra=std(data(i0:ip,1:3));
# magnitude
gm=sqrt(sum(gvector.^2));
erram=sqrt(sum(erra.^2));

ag=data(:,1:3); #2D array with len(dt) rows and 3 (agx,agy,agz) columns
# time data in s.
agx = -mean(ag(i0:ip,1)); % average -g in the x-axis
agy = -mean(ag(i0:ip,2)); % average -g in the y-axis
agz = -mean(ag(i0:ip,3)); % average -g in the z-axis

theta = atan2d(abs(agy),abs(agz));

endfunction
