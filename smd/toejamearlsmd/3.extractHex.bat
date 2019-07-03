@echo off
set T_FILENAME="TR_Toejam & Earl (UE) (REV00) [!].bin"
set SCRIPTNAME="toejamearlsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex A87FE-A897D,A83BE:120,A893E:20
pause
