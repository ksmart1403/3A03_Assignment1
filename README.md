# 3A03_Assignment1

Posted on Avenue in the content section Assignments and subsection Assignment #1 are four MATLAB
files named system0.m and system1.p – system3.p.
The file system0.m demonstrates how the three .p files all work. The input to each function
systemN.m is a time-step index vector n and an input signal vector x (these must be the same length).
For example, if you wanted to input the unit impulse function and test the system outputs from time step
−5 to +5, you would use n = -5:5, x = [0 0 0 0 0 1 0 0 0 0 0], y = systemN(n,x).
The example .m file system0.m allows you to look inside and see how the system works. The three .p files
are MATLAB “p-code” files in which the inner workings are obscured, such that these are “black box”
functions. Note that all of these functions assume zero initial conditions, i.e., x[n] = 0 and y[n] = 0 for all
values of n before the first time-step value in your supplied input array n, and that x[n] = 0 for all values
of n after the last time-step value in your input provided array n.
Download these files, and develop MATLAB scripts (i.e., .m files) that demonstrate whether each of
these systems 1–3 is:
  \tI. Causal or Non-causal
  II. Linear or Non-linear, where linearity includes both:
    a. “Homogeneity” (i.e., linear scaling over all scales of input signal amplitude), and
    b. “Additivity” (i.e., linear superposition)
  III. Time-invariant or Time-varying, and
  IV. Has Memory or is Memoryless.
In your report, clearly describe each of these three systems: i) your methodology for testing each of the
Properties listed above, and ii) your reasoning for why you think that system has that particular property,
e.g., what signal(s) you put into the system to determine whether it is causal or non-causal, and how you
can tell that from the output. You can create your own set of signals for input signals, as described above,
for the unit impulse. It is recommended that you test out the system properties with a few different
signals. Still, in your report, you can include just those input signal cases sufficient to support your
decisions on each system property.
