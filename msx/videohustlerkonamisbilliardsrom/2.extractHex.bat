@echo off
set T_FILENAME="TR_Video Hustler. Konami's Billiards (1984)(Konami)[RC-706].rom"
set SCRIPTNAME="videohustlerkonamisbilliardsrom"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
