@echo off
set T_FILENAME="TR_Adventures of Lolo (Europe) (SGB Enhanced).gb"
set S_FILENAME="Adventures of Lolo (Europe) (SGB Enhanced).gb"
set SCRIPTNAME="adventuresoflologb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause

