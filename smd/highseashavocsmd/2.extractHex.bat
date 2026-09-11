@echo off
set T_FILENAME="TR_High Seas Havoc (USA) (En,Ja).md"
set SCRIPTNAME="highseashavocsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
