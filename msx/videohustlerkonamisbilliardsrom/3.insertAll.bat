@echo off
set T_FILENAME="TR_Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set S_FILENAME="Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set SCRIPTNAME="videohustlerkonamisbilliardsrom"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
pause
