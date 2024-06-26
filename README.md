# KiCadLibs
A collection of KiCad libraries

# KiCad Custom Library Setup


## Prerequisites

Ensure you have Git and KiCad installed on your system. 

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

Add the following line to your `.bashrc`, `.zshrc` or `.bash_profile` file to set the environment variable `KICAD_CUSTOM_LIB_DIR` to the path of the cloned repository:

## Usage in KiCad
    ```
    export KICAD_CUSTOM_LIB_DIR=/path/to/KiCadLibs

    ```
Once the environment variable is set, you can use it within KiCad to reference your custom libraries:

1. **Open KiCad.**
2. **Go to Preferences → Manage Symbol Libraries… (for symbols) or Manage Footprint Libraries… (for footprints).**
3. **Add a new library using the environment variable:**
   In the library path, use the syntax <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.pretty` for footprints or <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.lib` for symbols.

## Contributing

Contributions to this repository are welcome. Please fork the repository and submit a pull request with your improvements.

