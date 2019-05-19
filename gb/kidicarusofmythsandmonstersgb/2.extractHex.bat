@echo off
set T_FILENAME="TR_Kid Icarus - Of Myths and Monsters (UE) [!].gb"
set SCRIPTNAME="kidicarusofmythsandmonstersgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 71E1:10,16C00:80,1C570:90,1C670:90,1C770:90,8F20:80,89E0:10,16BD0:10,16DC0:10
pause
