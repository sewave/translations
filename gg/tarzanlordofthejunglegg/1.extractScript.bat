@echo off
set T_FILENAME="Tarzan - Lord of the Jungle (Europe).gg"
set SCRIPTNAME="tarzanlordofthejunglegg"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
