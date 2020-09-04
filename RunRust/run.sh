#!/bin/bash

# Compile CPP File
rustc $1 -o ./RunRust/$2

# Execute it.
./RunRust/$2

rm ./RunRust/$2
