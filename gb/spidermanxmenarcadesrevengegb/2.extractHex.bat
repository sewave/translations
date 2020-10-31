@echo off
set T_FILENAME="TR_Spider-Man - X-Men - Arcade's Revenge (USA, Europe).gb"
set SCRIPTNAME="spidermanxmenarcadesrevengegb"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex 12718:40,12898:90,1C000:3B0,1F8B0:10,1FAD0:60
pause
