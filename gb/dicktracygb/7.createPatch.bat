@echo off
set T_FILENAME="TR_Dick Tracy (U).gb"
set S_FILENAME="Dick Tracy (U).gb"
set SCRIPTNAME="dicktracygb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
