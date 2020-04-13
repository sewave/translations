@echo off
set T_FILENAME="TR_Motocross Maniacs (U) [!].gb"
set SCRIPTNAME="motocrossmaniacsgb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3FE0:20,4630:30,4710:30
pause
