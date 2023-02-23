
function plot_acceleration(input_datafile, plotfile_name)
# input_datafile: data file
# plotfile_name = output file name

# a-f
# 1. Load the data with function load from Octave
data=load(input_datafile);
# 2. Save the data into two variables: ag (ag_x, ag_y, ag_z) and dt.
a=data(:,1:3); #2D array with len(dt) rows and 3 (agx,agy,agz) columns
# time data in s.
ax = a(:,1); % in the x-axis
ay = a(:,2); % in the y-axis
az = a(:,3); % in the z-axis

dt=data(:,4)*1e-3; # change ms to s
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
plot(t, ax);
grid("on")
axis([min(t), max(t), min(ax), max(ax)]);
ylabel('a_x (m/s^2)');
# y component
subplot(3, 1, 2);
plot(t,ay);
grid("on")
axis([min(t), max(t), min(ay), max(ay)]);
ylabel('a_y (m/s^2)');
# z component
subplot(3, 1, 3);
plot(t, az);
grid("on")
axis([min(t), max(t), min(az), max(az)]);
ylabel('(a_z (m/s^2)');
xlabel('t(s)');
# Save plot in jpg format
print(plotfile_name,"-djpeg");
endfunction
