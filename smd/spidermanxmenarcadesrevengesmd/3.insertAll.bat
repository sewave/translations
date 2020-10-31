@echo off
set T_FILENAME="TR_Spider-Man X-Men - Arcade's Revenge (USA, Europe).md"
set S_FILENAME="Spider-Man X-Men - Arcade's Revenge (USA, Europe).md"
set SCRIPTNAME="spidermanxmenarcadesrevengesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
