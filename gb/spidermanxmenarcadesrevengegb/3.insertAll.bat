@echo off
set T_FILENAME="TR_Spider-Man - X-Men - Arcade's Revenge (USA, Europe).gb"
set S_FILENAME="Spider-Man - X-Men - Arcade's Revenge (USA, Europe).gb"
set SCRIPTNAME="spidermanxmenarcadesrevengegb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
