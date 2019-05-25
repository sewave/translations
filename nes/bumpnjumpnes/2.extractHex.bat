@echo off
set T_FILENAME="TR_Bump'n'Jump (U) [!].nes"
set SCRIPTNAME="bumpnjumpnes"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 87C0:80,A7C0:100,C800:40,E800:40,FCD0:20,FDD0:20
pause
