@echo off
set T_FILENAME="TR_World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set S_FILENAME="World Cup Soccer ~ World Championship Soccer (Japan, USA) (Rev C).md"
set SCRIPTNAME="worldcupsoccerworldchampionshipsoccersmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
