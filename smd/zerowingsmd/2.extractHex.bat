@echo off
set T_FILENAME="TR_Zero Wing (Europe).md"
set SCRIPTNAME="zerowingsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FC40:60,36420:20,365A0:C0
pause
