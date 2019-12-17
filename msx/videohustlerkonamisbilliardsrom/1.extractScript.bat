@echo off
set T_FILENAME="Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set SCRIPTNAME="videohustlerkonamisbilliardsrom"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
