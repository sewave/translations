@echo off
set T_FILENAME="TR_Eliminate Down (J) [!].bin"
set SCRIPTNAME="eliminatedownsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex F293E:800
pause
