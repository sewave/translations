@echo off
set T_FILENAME="Crue Ball - Heavy Metal Pinball (USA, Europe).md"
set SCRIPTNAME="crueballheavymetalpinballsmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
