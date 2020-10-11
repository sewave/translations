@echo off
set T_FILENAME="TR_TechnoClash (USA, Europe).md"
set SCRIPTNAME="technoclashsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 6C1E2:20,6C842:20,6CA42:C0
pause
