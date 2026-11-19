% =========================================================================
% File:        split3_vector.m
% Author:      Herrera, Adrian Joseph R.
% Section:     2ECE-D
% Course:      ECE 2112 - Advanced Computer Programming and Algorithms
% Experiment:  Experiment 6 - MATLAB Programming in Editor Window
% Description: Separates multiples of 3 (including 0) from remaining
%              integers in row vector x without loops, using mod and
%              logical indexing while preserving original element order.
% =========================================================================

function [multiple3, notmultiple3] = split3_vector(x)
% SPLIT3_VECTOR Isolate multiples of 3 using mod and logical indexing.
%   [multiple3, notmultiple3] = SPLIT3_VECTOR(x) accepts a row vector of
%   integers x and returns multiple3 and notmultiple3 in original order
%   without using loops, treating 0 as divisible by 3.

    is_div3 = (mod(x, 3) == 0);
    multiple3 = x(is_div3);
    notmultiple3 = x(~is_div3);
end
