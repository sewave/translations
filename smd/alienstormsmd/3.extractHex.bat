@echo off
set T_FILENAME="TR_Alien Storm (W) [!].gen"
set SCRIPTNAME="alienstormsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
