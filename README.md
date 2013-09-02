# verify.bash

Just a way to help verify the compatibility of the system to run scripts or programs.


## Infos
* Made in OS : Mac OS X 10.6 (a.k.a Snow Leopard)
* Tested in OS : Mac OS X 10.6, Mac OS X 10.7, Ubuntu Server 10.04 LTS, Ubuntu 12.04 LTS
* Language Used : Shell Script (Bash)
* Dependencies : type
* License : BSD 3-Clause License


## How To
### Configuration
Open verify.bash and change in the line `8` to bash version you want.

    BASH_VER='3'

After this say the programs you want check.

    PROGRAMS[0]='ps'
    PROGRAMS[1]='grep'
    PROGRAMS[2]='awk'
    PROGRAMS[3]='kill'

After this settings, you only need run verify.bash and be happy.


### Example of Execution
    $ ./verify.bash 
    'ps'.... OK
    'grep'.... OK
    'awk'.... OK
    'kill'.... OK
    Bash version..... OK
    Passed!
