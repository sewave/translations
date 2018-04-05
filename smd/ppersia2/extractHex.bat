@echo off 
set T_FILENAME="TR_Prince of Persia 2 - The Shadow and The Flame (Beta).bin"
set SCRIPTNAME="ppersia2"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 8B66C-8B6CB,8BA4C-8BACB,8B38C-8B3AB,8B86C:20
pause 
