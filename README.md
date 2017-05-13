# Scripts

Miscellaneous scripts to make life easier

## VTUResults

### 1. ```checkresult.sh```
Continuously checks the result url to see if it says 'Unavailable'. If not, it immediately opens the saved result in a browser and plays alert sounds. Use this on the day results are to be announced.

### 2. ```getallresults.sh```
Download all results to a folder. Currently CS 1-136.  
Possible enhancement: Parallel connections for faster execution

### 3. ```getthisresult.sh```
Use to repeatedly check for a specific USN.  
Usage: ```sh getthisresult.sh <usn_here>```

### Requirements
1. Firefox browser
2. ```paplay``` to play beep sound
