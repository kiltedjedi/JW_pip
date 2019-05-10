# PIP Installs for offline / restricted machines

## Usage
1. Add packages to requirements.txt
2. run pip_download.ps1 - edit the destination folder (after -d) to one local
3. confirm all packages and dependent packages have donwloaded - Note you may have to make sure you have the files for the specific Python version / architecture.  If so these can be downloaded manually to the downloads directory and included
4. zip file up and transmit to restricted machine
5. Unzip the files and note the location of the requirements.txt and the unzipped files
6. On restricted machine, run pipinstall offline script - edit the path to the requirements.txt and the directory where the packages are
7. Profit


### Packages included 
- setuptools >= 41
- pip >= 19
- pylint >= 2.3.1 
- pyautogui >= 0.9
- zappa >= 0.48.2
- numpy >= 1.16.3
- boto3 >= 1.9.143
- AWSCLI >= 1.16.155
- BeautifulSoup4 >= 3.2.1
- Requests-NTLM >= 1.1.0
- Requests >= 2.21.0
- ConfigParser >= 3.7.4
- lxml >= 4.3.3
- Flask >= 1.0.2
- Troposphere >= 2.4.6
- Pandas >= 0.24.2
- docx >=  0.2.4
- xls2db >= 0.0.8
- pyexcel-xls >= 0.5.8
- urllib3 >= 1.25.2
- py2exe >= 0.9.2.2
- pywin32 >= 224
- simplejson >= 3.16.0
- xlsxwriter >= 1.1.8
