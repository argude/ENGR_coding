clc
clear all

# Exercise 1
# Example. If the input data are in file "datafile_e1.txt"
# "plot_gravity" function invocation
plot_acceleration("datafile_e1.txt");
# "gravity" function invocation
[gvector, erra, gm, erram, theta] = gravity(0, 5, "datafile_e1.txt");
printf("Phone at rest in the flat: \n");
# Print: average acceleration and error vectors
printf("gravity vector, g: \n");
disp(gvector);
printf("Error vector, erra: \n");
disp(erra);
printf("Magnitude gravity: \n");
display(gm)
printf("Magnitude error:\n");
display(erram)
printf("Angle: \n");
disp(theta);
fprintf('\n') % leave blank space in command window
fprintf('\n') % leave blank space in command window

[gvector, erra, gm, erram, theta] = gravity(7, 11, "datafile_e1.txt");
printf("Phone at rest in the flat: \n");
# Print: average acceleration and error vectors
printf("gravity vector, g: \n");
disp(gvector);
printf("Error vector, erra: \n");
disp(erra);
printf("Magnitude gravity\n");
display(gm)
printf("Magnitude error\n");
display(erram)
printf("Angle: \n");
disp(theta);
angle = theta;
gravity_magnitude = gm;

# "aceleration" function invocation
[a, erra, am, erram, coefficient] = acceleration(11.5, 12, "datafile_e1.txt");
# Print: average acceleration and error vectors
printf("acceleration vector, a: \n");
disp(a);
printf("Error vector, erra: \n");
disp(erra);
printf("Magnitude acceleration: \n");
display(am)
printf("Magnitude error: \n");
display(erram)
printf("coefficient of dynamic friction: \n");
disp(coefficient);

