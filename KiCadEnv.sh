#!/bin/sh

# Define the directory
KICAD_LIB_DIR="/path/to/your/custom/library"

# Check if the directory exists
if [ -d "$KICAD_LIB_DIR" ]; then
    # Export the environment variable
    export KICAD_CUSTOM_LIB_DIR="$KICAD_LIB_DIR"
    echo "KiCad custom library directory set to $KICAD_CUSTOM_LIB_DIR"
else
    echo "KiCad custom library directory does not exist."
fi
