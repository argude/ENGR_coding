# Exercise 2
function [a, erra, am, erram,coefficient]= acceleration(t0, tp, input_datafile)
# Calculate average acceleration vector,
# magnitude acceleration and statistical errors
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
a=mean(data(i0:ip,1:3));
erra=std(data(i0:ip,1:3));
# magnitude
am=sqrt(sum(a.^2));
erram=sqrt(sum(erra.^2));

ag=data(:,1:3); #2D array with len(dt) rows and 3 (agx,agy,agz) columns
# time data in s.
agx = mean(ag(i0:ip,1)); % average in the x-axis (a-g)_x
agy = mean(ag(i0:ip,2)); % average in the y-axis  (a-g)_y
agz = mean(ag(i0:ip,3)); % average in the z-axis  (a-g)_z

coefficient = agy/agz;

endfunction

