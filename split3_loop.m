% =========================================================================
% File:        split3_loop.m
% Author:      Herrera, Adrian Joseph R.
% Section:     2ECE-D
% Course:      ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment:  Experiment 6 - MATLAB Programming in Editor Window
% Description: Separates multiples of 3 (including 0) from remaining
%              integers in row vector x using a for loop and conditional
%              statement while preserving original element order.
% =========================================================================

function [multiple3, notmultiple3] = split3_loop(x)
% SPLIT3_LOOP Isolate multiples of 3 using a loop and conditional check.
%   [multiple3, notmultiple3] = SPLIT3_LOOP(x) accepts a row vector of
%   integers x and returns multiple3 and notmultiple3 in original order,
%   treating 0 as divisible by 3.

    multiple3 = [];
    notmultiple3 = [];

    for k = 1:length(x)
        if mod(x(k), 3) == 0
            multiple3(end + 1) = x(k); %#ok<AGROW>
        else
            notmultiple3(end + 1) = x(k); %#ok<AGROW>
        end
    end
end
