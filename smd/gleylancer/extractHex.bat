@echo off 
set T_FILENAME="TR_Gley Lancer (J) [T+ENG].gen"
set SCRIPTNAME="gleylancer"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause 
