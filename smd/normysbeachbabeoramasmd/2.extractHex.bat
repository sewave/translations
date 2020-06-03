@echo off
set T_FILENAME="TR_Normy's Beach Babe-O-Rama (UE) [!].bin"
set SCRIPTNAME="normysbeachbabeoramasmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
