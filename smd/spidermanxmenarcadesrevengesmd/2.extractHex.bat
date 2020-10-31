@echo off
set T_FILENAME="TR_Spider-Man X-Men - Arcade's Revenge (USA, Europe).md"
set SCRIPTNAME="spidermanxmenarcadesrevengesmd"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex AB75F:20
pause
