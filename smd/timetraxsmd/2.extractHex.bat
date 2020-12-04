@echo off
set T_FILENAME="TR_Time Trax (USA) (Proto).md"
set SCRIPTNAME="timetraxsmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
