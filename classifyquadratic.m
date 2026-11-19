% =========================================================================
% File:        classifyquadratic.m
% Author:      Herrera, Adrian Joseph R.
% Section:     2ECE-D
% Course:      ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment:  Experiment 6 - MATLAB Programming in Editor Window
% Description: Computes the discriminant D = b^2 - 4*a*c for a quadratic
%              equation ax^2 + bx + c = 0 (a ~= 0) and classifies the roots
%              using an if/elseif/else conditional structure.
% =========================================================================

function [D, kind] = classifyquadratic(a, b, c)
% CLASSIFYQUADRATIC Compute discriminant and classify quadratic roots.
%   [D, kind] = CLASSIFYQUADRATIC(a, b, c) evaluates D = b^2 - 4*a*c for
%   a ~= 0 and returns kind as "two distinct real roots",
%   "one repeated real root", or "two complex roots".

    if a == 0
        error('Coefficient "a" must be nonzero for a quadratic equation.');
    end

    D = b^2 - 4*a*c;

    if D > 0
        kind = "two distinct real roots";
    elseif D == 0
        kind = "one repeated real root";
    else
        kind = "two complex roots";
    end
end
