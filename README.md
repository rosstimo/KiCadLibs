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

 You can use an environment variable is set, you can use it within KiCad to reference your custom libraries:

1. **Open KiCad.**
2. **Go to Preferences → Manage Symbol Libraries… (for symbols) or Manage Footprint Libraries… (for footprints).**
3. **Add a new library using the environment variable:**
   In the library path, use the syntax <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.pretty` for footprints or <br> `${KICAD_CUSTOM_LIB_DIR}/your_library_name.lib` for symbols.
4. You can map the custom library path directly by clicking on the folder icon and navigating to the library location.

## Contributing

Contributions to this repository are welcome. Please fork the repository and submit a pull request with your improvements.

