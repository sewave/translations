@echo off
set T_FILENAME="TR_Fix & Foxi - Episode 1 Lupo (Europe) (En,Fr,De).gbc"
set S_FILENAME="Fix & Foxi - Episode 1 Lupo (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="fixfoxiepisode1lupogbc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
