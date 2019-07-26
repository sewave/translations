@echo off
set T_FILENAME="TR_Sword of Sodan (UE) [!].bin"
set SCRIPTNAME="swordofsodansmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
