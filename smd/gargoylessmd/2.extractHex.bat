@echo off
set T_FILENAME="TR_Gargoyles (USA).md"
set SCRIPTNAME="gargoylessmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex E0780:100
pause
