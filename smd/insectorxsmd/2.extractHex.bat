@echo off
set T_FILENAME="TR_Insector X (U) [!].bin"
set SCRIPTNAME="insectorxsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 1BCE8:600,2F0B8:100,2F7D8:20,1B488:800
pause
