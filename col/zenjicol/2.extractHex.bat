@echo off
set T_FILENAME="TR_Zenji (1984) (Activision).col"
set SCRIPTNAME="zenjicol"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 216D:48
pause
