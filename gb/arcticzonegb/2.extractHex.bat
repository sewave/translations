@echo off
set T_FILENAME="TR_Arctic Zone (Sachen 4-in-1 Vol. 5) (Unl) [!].gb"
set SCRIPTNAME="arcticzonegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
