#!/bin/bash

# Navigate up two directories
pushd ../..

# Change to KTX-Software directory
cd framework/external/KTX-Software

# Fetch git tags
git fetch origin 'refs/tags/*:refs/tags/*'

# Return to original directory
popd

# Create solution directory
mkdir -p solution

# Enter solution directory
pushd solution

# Run cmake with appropriate generator
# Option 1: Using Xcode (macOS default)
cmake -G "Xcode" ..

# Option 2: If you prefer Unix Makefiles instead of Xcode
# cmake -G "Unix Makefiles" ..

# Build Debug configuration
cmake --build . --config Debug

# Build Release configuration
cmake --build . --config Release

# Return to original directory
popd
