@echo off
set T_FILENAME="TR_Spider-Man - X-Men - Arcade's Revenge (USA).gg"
set SCRIPTNAME="spidermanxmenarcadesrevengegg"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 3B540:40
pause
