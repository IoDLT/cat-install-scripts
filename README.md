# Catapult Install Scripts

This set of bash scripts (base script originally from Jaguar0625) that aid in downloading, compiling,and installing  the Catapult toolchain on macOS & Linux systems.  I also added scripts for updating `gcc` and `cmake`.

The following scripts are included: 

* ``install_base_deps.sh`` - only for Linux. 
    
    Installs `apt` system dependencies that are required for Catapult. It also updates via `apt update` and `apt upgrade`.

    **Usage**: 
    ```bash install_base_deps.sh```


* ``install_cat_deps.sh`` - installs direct Catapult dependencies.  Dependencies will be installed in the specified directory.  

    **Usage**:  
    ```bash install_cat_deps.sh <install_dir> <job_count, i.e "8">```
