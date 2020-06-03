@echo off
set T_FILENAME="TR_Tarzan - Lord of the Jungle (Europe).gg"
set S_FILENAME="Tarzan - Lord of the Jungle (Europe).gg"
set SCRIPTNAME="tarzanlordofthejunglegg"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
