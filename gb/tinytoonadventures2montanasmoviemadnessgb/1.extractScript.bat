@echo off
set T_FILENAME="Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set SCRIPTNAME="tinytoonadventures2montanasmoviemadnessgb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
