@echo off
set T_FILENAME="TR_Xenon 2 - Megablast (E) [c][!].gen"
set SCRIPTNAME="xenon2megablastsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
