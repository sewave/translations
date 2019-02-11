@echo off
set T_FILENAME="TR_Gulkave (SG-1000) [!].sg"
set SCRIPTNAME="gulkavesg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 567E:18,59C8:18
pause
