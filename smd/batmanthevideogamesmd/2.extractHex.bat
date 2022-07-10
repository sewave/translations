@echo off
set T_FILENAME="TR_Batman - The Video Game (USA).md"
set SCRIPTNAME="batmanthevideogamesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 7FC00:200
pause
