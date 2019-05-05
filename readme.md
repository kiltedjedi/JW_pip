# PIP Installs for offline / restricted machines

## Usage
1. Add packages to requirements.txt
2. run pip_download.ps1 - edit the destination folder (after -d) to one local
3. confirm all packages and dependent packages have donwloaded
4. zip file up and transmit to restricted machine
5. Make sure requirements.txt is located in the same directory as the
6. On restricted machine, run pipinstall offline - edit the path to the requirements.txt and the directory where the packages are
7. Profit


Extensions included 
- setuptools >= 41
- pip >= 19
- pylint >= 2.3.1 
- pyautogui >= 0.9
- zappa >= 0.48.2
- numpy >= 1.16.3