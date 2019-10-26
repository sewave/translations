@echo off
set T_FILENAME="Q-bert for Game Boy (USA, Europe).gb"
set SCRIPTNAME="qbertforgameboygb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
