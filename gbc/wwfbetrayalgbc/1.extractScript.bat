@echo off
set T_FILENAME="WWF Betrayal (USA, Europe).gbc"
set SCRIPTNAME="wwfbetrayalgbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
