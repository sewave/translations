@echo off
set T_FILENAME="TR_Tiny Toon Adventures 2 - Montana's Movie Madness (USA, Europe).gb"
set SCRIPTNAME="tinytoonadventures2montanasmoviemadnessgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
