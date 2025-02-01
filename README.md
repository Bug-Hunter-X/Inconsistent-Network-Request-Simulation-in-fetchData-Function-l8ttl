# Inconsistent Network Request Simulation in fetchData Function

This repository demonstrates a common error in Swift code where network requests are simulated inconsistently, potentially leading to unexpected behavior in production environments.

## Problem Description

The `fetchData` function uses `Bool.random()` to simulate a network request's success or failure. This approach lacks predictability and realism, potentially causing unexpected results.

## Solution

The provided solution replaces the random success/failure simulation with a more controlled mechanism, ensuring consistent and predictable behavior.

## How to Run

1. Clone this repository.
2. Open the project in Xcode.
3. Run the code to observe both the buggy and corrected versions of the fetchData function.
