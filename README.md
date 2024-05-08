# KiCadLibs
A collection of KiCad libraries

# KiCad Custom Library Setup

This repository contains a script to help set up an environment variable for custom KiCad libraries. This environment variable, `KICAD_CUSTOM_LIB_DIR`, points to the directory containing your custom KiCad libraries.

## Prerequisites

Ensure you have Git and KiCad installed on your system. This script is intended for use on systems running Bash or Zsh shells.

## Installation

1. **Clone the Repository:**
   Clone this repository to your local machine using:
   ```
   git clone https://github.com/rosstimo/KiCadLibs.git
   ```

2. **Navigate to the Repository:**
   Change directory to the cloned repository:
   ```
   cd KiCadLibs
   ```

## Configuration

1. **Edit the Script:**
   Open `kicadEnv.sh` in a text editor and modify the `KICAD_LIB_DIR` variable to point to your custom library directory:
   ```
   vim kicadEnv.sh
   ```
   ```
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
   ```
   Replace `/path/to/your/custom/library` with the actual path to your custom library directory.

2. **Make the Script Executable:**
   Change the permissions of the script to make it executable:
   ```
   chmod +x kicadEnv.sh
   ```
3. **Source the Script:**
   Add the following line to your `.bashrc` or `.zshrc` file to source this script:
   ```
   source /path/to/KiCadLibs/kicadEnv.sh
   ```
   Replace `/path/to/KiCadLibs/kicadEnv.sh` with the actual path to the `kicadEnv.sh` script in your local clone of the repository.

## Usage in KiCad

Once the environment variable is set, you can use it within KiCad to reference your custom libraries:

1. **Open KiCad.**
2. **Go to Preferences → Manage Symbol Libraries… (for symbols) or Manage Footprint Libraries… (for footprints).**
3. **Add a new library using the environment variable:**
   In the library path, use the syntax <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.pretty` for footprints or <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.lib` for symbols.

## Contributing

Contributions to this repository are welcome. Please fork the repository and submit a pull request with your improvements.

