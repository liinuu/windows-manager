# windows-manager
a bash script to automaticly download and set chntpw up, as well as mounting the windows disk to reset passwords and edit users.

this will:
- download chntpw
- download fdisk
- search for a windows partion
- mount the windows partion to /mnt/Microsoft/
- launch chntpw

use the command below to automaticly set everything up:<br>
```sudo git clone https://github.com/liinuu/windows-manager/ && cd windows-manager && sh bash.sh```
