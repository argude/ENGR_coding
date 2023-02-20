printf("Functions for Exercise 1\n");

# Exercise 1, a-f,h)
function plot_acceleration(input_datafile, plotfile_name)
# input_datafile: data file
# plotfile_name = output file name

# a-f
# 1. Load the data with function load from Octave
data=load(input_datafile);
# 2. Save the data into two variables: ag (ag_x, ag_y, ag_z) and dt.
ag=data(:,1:3); #2D array with len(dt) rows and 3 (agx,agy,agz) columns
# time data in s.
dt=data(:,4)*.1e-3; # change ms to s
# create a time array initialized to 0
t=zeros(1,length(dt));
# calculate time with a loop
for i=1:length(dt)
    t(i)=sum(dt(1:i));
endfor

#h
# Plot the time dependent acceleration (three components) with
# functions from plot commands of Octave.
# x component
subplot(3, 1, 1);
plot(t, ag(:,1));
grid("on")
axis([min(t), max(t), min(ag(:,1)), max(ag(:,1))]);
ylabel('$(a-g)_x (m/s^2)$');
# y component
subplot(3, 1, 2);
plot(t,ag(:,2));
grid("on")
axis([min(t), max(t), min(ag(:,2)), max(ag(:,2))]);
ylabel('(a-g)_y (m/s^2)');
# z component
subplot(3, 1, 3);
plot(t, ag(:,3));
grid("on")
axis([min(t), max(t), min(ag(:,3)), max(ag(:,3))]);
ylabel('(a-g)_z (m/s^2)');
xlabel('t(s)');
# Save plot in jpg format
print(plotfile_name,"-djpeg");
endfunction

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
am=sqrt(sum(a.**2));
erram=sqrt(sum(erra.**2));

endfunction

# Exercise 1
# Example. If the input data are in file "datafile.txt"
# "plot_acdeleration" function invocation
plot_acceleration("datafile.txt","plotfile");
# "aceleration" function invocation
[a, erra, am, erram] = acceleration(0, 6, "datafile.txt");
# Print: average acceleration and error vectors
printf("Accelerarion vector, a: \n");
disp(a);
printf("Error vector, erra: \n");
disp(erra);
printf("Magnitudes values: am=%.3f \terram=%.3f\n",am, erram);






