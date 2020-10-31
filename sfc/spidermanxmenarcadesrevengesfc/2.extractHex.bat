@echo off
set T_FILENAME="TR_Spider-Man - X-Men - Arcade's Revenge (USA).sfc"
set SCRIPTNAME="spidermanxmenarcadesrevengesfc"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
