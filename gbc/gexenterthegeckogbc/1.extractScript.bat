@echo off
set T_FILENAME="Gex - Enter the Gecko (USA, Europe).gbc"
set SCRIPTNAME="gexenterthegeckogbc"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
