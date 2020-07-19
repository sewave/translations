@echo off
set T_FILENAME="TR_Fighting Simulator 2 in 1 - Flying Warriors (USA, Europe).gb"
set S_FILENAME="Fighting Simulator 2 in 1 - Flying Warriors (USA, Europe).gb"
set SCRIPTNAME="fightingsimulator2in1flyingwarriorsgb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
