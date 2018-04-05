@echo off 
set T_FILENAME="TR_Robocop 3 (UE) [!].gen"
set SCRIPTNAME="robocop3smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
