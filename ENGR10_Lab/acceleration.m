# Exercise 1, i)
function [a, erra, am, erram]=acceleration(t0, tp, input_datafile)
# Calculate average acceleration vector,
# magnitude acceleration and statistical errors
# in a time interval.
# t0: initial time
# tp: end time
# input_datafile: data file

# Load the data with function load from Octave
dat=load(input_datafile);

# time data in s: change ms to s
dat(:,4)=dat(:,4).*1e-3;

# calculation of the indexes
# to access the data in the array
i0=min(find(dat(:,4)>=t0));
ip=max(find(dat(:,4)<=tp));

# average acceleration and error
a=mean(dat(i0:ip,1:3));
erra=std(dat(i0:ip,1:3));
# magnitude
am=sqrt(sum(a.^2));
erram=sqrt(sum(erra.^2));

endfunction
