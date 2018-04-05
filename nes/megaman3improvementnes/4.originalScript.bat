@echo off
set T_FILENAME="Megaman3Improvement (U) [!].nes"
set SCRIPTNAME="megaman3improvementnes"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Dialog.tbl %T_FILENAME% %SCRIPTNAME%Dialog.ext %SCRIPTNAME%Dialog.off
pause
