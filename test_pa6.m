% =========================================================================
% File:        test_pa6.m
% Author:      Herrera, Adrian Joseph R.
% Section:     2ECE-D
% Course:      ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment:  Experiment 6 - MATLAB Programming in Editor Window
% Description: Test script that exercises all required functions and scripts
%              for Experiment 6 (classifyquadratic, phasor_components,
%              split3_loop, and split3_vector) and verifies equivalence
%              with isequal.
% =========================================================================

clear; clc;

fprintf('=== Problem A: Quadratic Root Classifier ===\n');
cases = [1, -5, 6;
         1,  4, 4;
         1,  2, 5];

for idx = 1:size(cases, 1)
    [D, kind] = classifyquadratic(cases(idx, 1), cases(idx, 2), cases(idx, 3));
    fprintf('Input (%d, %d, %d) -> D = %g, kind = "%s"\n', ...
            cases(idx, 1), cases(idx, 2), cases(idx, 3), D, kind);
end
fprintf('\n');

fprintf('=== Problem B: Phasor Component Script ===\n');
phasor_components;

fprintf('=== Problem C: Multiples-of-Three Isolation ===\n');
x = [12, -7, 9, 4, 0, 15, 8, -3, 10];

[m3_loop, nm3_loop] = split3_loop(x);
[m3_vec, nm3_vec]   = split3_vector(x);

fprintf('x               = '); disp(x);
fprintf('multiple3_loop  = '); disp(m3_loop);
fprintf('multiple3_vec   = '); disp(m3_vec);
fprintf('notmult3_loop   = '); disp(nm3_loop);
fprintf('notmult3_vec    = '); disp(nm3_vec);

fprintf('isequal(multiple3)    : %d\n', isequal(m3_loop, m3_vec));
fprintf('isequal(notmultiple3) : %d\n', isequal(nm3_loop, nm3_vec));
