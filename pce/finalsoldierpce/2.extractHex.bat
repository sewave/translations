@echo off
set T_FILENAME="TR_Final Soldier (J).pce"
set SCRIPTNAME="finalsoldierpce"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 75400:2000,6E300:1800,46800:20,47800:400,30818:1200,31FD0:40
pause
