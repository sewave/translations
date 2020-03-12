@echo off
set T_FILENAME="TR_Darwin 4081 (J) [!].bin"
set SCRIPTNAME="darwin4081smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
