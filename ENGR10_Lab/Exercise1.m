# Exercise 1
# Example. If the input data are in file "datafile.txt"
# "plot_acdeleration" function invocation
plot_acceleration("datafile_e1.txt","plotfile");
# "aceleration" function invocation
[a, erra, am, erram] = acceleration(0, 6, "datafile_e1.txt");
# Print: average acceleration and error vectors
printf("Adcelerarion vector, a: \n");
disp(a);
printf("Error vector, erra: \n");
disp(erra);
printf("Magnitudes values: am=%.3f \terram=%.3f\n",am, erram);

