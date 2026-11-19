# ECE2112_PA6_Herrera

**Experiment 6: MATLAB Programming in Editor Window**  
**Course:** ECE 2112 – Advanced Computer Programming and Algorithms  
**Name:** Herrera, Adrian Joseph R.  
**Section:** 2ECE-D  

---

## Overview

This repository contains the MATLAB `.m` scripts, functions, and test driver for **Experiment 6** (`ECE2112_PA6.pdf`), covering:
- Function structure, H1 lines, and help text documentation
- Conditional branching (`if` / `elseif` / `else`) for quadratic root classification
- Degree-based phasor rectangular-to-polar reconstruction (`cosd`, `sind`, `atan2d`)
- Comparing loop-based filtering against vectorized logical indexing (`mod` + logical masks) while preserving element order

---

## File Structure

| File | Type | Summary |
| :--- | :--- | :--- |
| `classifyquadratic.m` | Function | Computes discriminant $D = b^2 - 4ac$ and classifies roots into `"two distinct real roots"`, `"one repeated real root"`, or `"two complex roots"`. |
| `phasor_components.m` | Script | Computes $V_x$ and $V_y$ for $V = 20$, $\theta = 35^\circ$ and verifies $V_{\text{check}}$ and $\theta_{\text{check}}$. |
| `split3_loop.m` | Function | Isolates multiples of 3 (including `0`) and non-multiples in original order using a `for` loop and `if`/`else`. |
| `split3_vector.m` | Function | Isolates multiples of 3 (including `0`) and non-multiples in original order using `mod` and logical indexing without loops. |
| `test_pa6.m` | Script | Runs all required test cases across Problems A, B, and C and checks output equality via `isequal`. |

---

## Usage

1. Clone or download this repository into your working directory:
   ```bash
   git clone https://github.com/AdrianJoseph-Herrera/ECE2112_PA6_Herrera.git
   cd ECE2112_PA6_Herrera
   ```
2. Open MATLAB, set the **Current Folder** to `ECE2112_PA6_Herrera`, and run the test script:
   ```matlab
   test_pa6
   ```
3. Inspect function help text directly in the MATLAB Command Window:
   ```matlab
   help classifyquadratic
   help split3_loop
   help split3_vector
   ```
