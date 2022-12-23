@echo off
set T_FILENAME="TR_Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set S_FILENAME="Escape From The Mind Master (1983) (Starpath) (Prototype).col"
set SCRIPTNAME="escapefromthemindmastercol"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
