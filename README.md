# Catapult Install Scripts

This set of bash scripts (base script originally from Jaguar0625) that aid in downloading, compiling,and installing the Catapult toolchain on macOS & Debian-based Linux systems. I also added scripts for updating `gcc` and `cmake`, but keep in mind it is only for Debian (for now).

The following scripts are included:

- `install_base_deps_ubuntu.sh` - only for Linux.

  Installs `apt` system dependencies that are required for Catapult. It also updates via `apt update` and `apt upgrade`.

  **Usage**:
  `bash install_base_deps_ubuntu.sh`

* `install_cat_deps.sh` - installs direct Catapult dependencies. Dependencies will be installed in the specified directory.

  **Usage**:  
   `bash install_cat_deps.sh <install_dir> <job_count, i.e "8">`

## Ubuntu Instructions

1. Open your Terminal

2. Create a directory for your catapult install to go: `mkdir catapult-source`

3. Clone and checkout the correct branch:
   git clone `https://github.com/IoDLT/cat-install-scripts.git --single-branch --branch v0.9.4.1`

4. Go into the directory:
   `cd cat-install-scripts/src`

5. Run the pre-install script for base dependencies (might take some time):
   `bash install_base_deps_ubuntu.sh`

6. Run the script:
   `bash install_cat_deps.sh /home/<Your-Username>/catapult-source 8`

## macOS Instructions

1. Open your Terminal

2. Create a directory for your catapult install to go: `mkdir catapult-source`

3. Clone and checkout the correct branch:
   git clone `https://github.com/IoDLT/cat-install-scripts.git --single-branch --branch v0.9.4.1`

4. Go into the directory:
   `cd cat-install-scripts/src`

5. Run the script:
   `bash install_cat_deps.sh /Users/<Your-Username>/catapult-source 8`
