@echo off
set T_FILENAME="TR_Fix & Foxi - Episode 1 Lupo (Europe) (En,Fr,De).gbc"
set S_FILENAME="Fix & Foxi - Episode 1 Lupo (Europe) (En,Fr,De).gbc"
set SCRIPTNAME="fixfoxiepisode1lupogbc"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
