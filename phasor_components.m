% =========================================================================
% File:        phasor_components.m
% Author:      Herrera, Adrian Joseph R.
% Section:     2ECE-D
% Course:      ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment:  Experiment 6 - MATLAB Programming in Editor Window
% Description: Computes rectangular phasor components Vx and Vy from
%              magnitude V = 20 and phase angle theta = 35 degrees using
%              degree-based trigonometric functions, then reconstructs and
%              displays V_check and theta_check via atan2d.
% =========================================================================

V = 20;
theta = 35;

Vx = V * cosd(theta);
Vy = V * sind(theta);

V_check = sqrt(Vx^2 + Vy^2);
theta_check = atan2d(Vy, Vx);

fprintf('--- Phasor Component Calculation ---\n');
fprintf('Vx          = %.4f\n', Vx);
fprintf('Vy          = %.4f\n', Vy);
fprintf('V_check     = %.4f\n', V_check);
fprintf('theta_check = %.4f degrees\n\n', theta_check);
