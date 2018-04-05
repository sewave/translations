@echo off 
set T_FILENAME="TR_Mitsume ga Tooru (J) [T-Eng1.01_Toma].nes"
set SCRIPTNAME="mitsumegatooru"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3EC10:80
pause 
