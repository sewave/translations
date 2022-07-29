@echo off
set T_FILENAME="TR_Atomic Runner (USA).md"
set SCRIPTNAME="atomicrunnersmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex FEB00:100
pause
