@echo off
set T_FILENAME="TR_California Raisins, The - The Grape Escape (U) (Prototype).nes"
set S_FILENAME="California Raisins, The - The Grape Escape (U) (Prototype).nes"
set SCRIPTNAME="californiaraisinsthethegrapeescapenes"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
