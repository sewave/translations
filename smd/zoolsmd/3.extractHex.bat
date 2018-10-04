@echo off
set T_FILENAME="TR_Zool (U) [!].gen"
set SCRIPTNAME="zoolsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
