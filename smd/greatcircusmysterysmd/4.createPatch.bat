@echo off
set T_FILENAME="TR_Great Circus Mystery Starring Mickey & Minnie, The (USA).md"
set S_FILENAME="Great Circus Mystery Starring Mickey & Minnie, The (USA).md"
set SCRIPTNAME="greatcircusmysterysmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
