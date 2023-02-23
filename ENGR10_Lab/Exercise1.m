clc
clear all

# Exercise 1
# Example. If the input data are in file "datafile_e1.txt"
# "plot_gravity" function invocation
plot_gravity("datafile_e1.txt","rest_flat");
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
gravity = gm;

figure % creates a new figure
# Example. If the input data are in file "datafile.txt"
# "plot_acdeleration" function invocation
plot_acceleration("datafile_incline.txt","incline");
# "aceleration" function invocation
[a, erra, am, erram, coefficient] = acceleration(5, 5.5, "datafile_incline.txt",angle,gravity);
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
