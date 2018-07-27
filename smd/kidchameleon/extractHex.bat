@echo off 
set T_FILENAME="TR_Kid Chameleon (UE) [!].bin"
set SCRIPTNAME="kidchameleon"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
