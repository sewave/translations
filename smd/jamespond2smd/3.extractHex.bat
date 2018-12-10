@echo off
set T_FILENAME="TR_James Pond II - Codename RoboCod (UE) [!].bin"
set SCRIPTNAME="jamespond2smd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
