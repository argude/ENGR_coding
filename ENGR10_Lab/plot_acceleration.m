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
ylabel('(a-g)_x (m/s^2)');
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
