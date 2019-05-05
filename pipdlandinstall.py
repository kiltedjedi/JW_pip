import os
import sys



def getAction():
    input = print("What action are you preforming, dowwnload (d) or install (i) ", input)
    if input == "d":
        print("We will be downloading the packages listed in requirements.txt")
        return input
    elif input == "i":
        print("We will be installing the pcakages listed in requirements.txt")
        return input
    else:
        print("Unfortunately that is not an option, please choose either d for download, or i for install")
        sys.exit()

def downloadAndZip():
    
    


with open("requirements.txt")
