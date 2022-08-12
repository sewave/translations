@echo off
set T_FILENAME="TR_Wardner (USA).md"
set SCRIPTNAME="wardnersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 72000:1000
pause
