@echo off
set T_FILENAME="TR_Super Star Wars - Return of the Jedi (USA, Europe) (SGB Enhanced).gb"
set S_FILENAME="Super Star Wars - Return of the Jedi (USA, Europe) (SGB Enhanced).gb"
set SCRIPTNAME="superstarwarsreturnofthejedigb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
