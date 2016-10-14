#!/bin/bash

echo "This is a script to create directories"

# delete the directory first
rmdir week2

# throws an exception if week 2 already exists
mkdir week2

# Create 3 more subdirs in week 2
cd week2
mkdir subdir1 subdir2 subdir3

echo "Created sub-directories"
