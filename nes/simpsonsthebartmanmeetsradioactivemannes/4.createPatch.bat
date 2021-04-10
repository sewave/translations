@echo off
set T_FILENAME="TR_Simpsons, The - Bartman Meets Radioactive Man (USA).nes"
set S_FILENAME="Simpsons, The - Bartman Meets Radioactive Man (USA).nes"
set SCRIPTNAME="simpsonsthebartmanmeetsradioactivemannes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
