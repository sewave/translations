@echo off
set T_FILENAME="TR_Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set S_FILENAME="Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set SCRIPTNAME="videohustlerkonamisbilliardsrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
