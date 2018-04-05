@echo off
set T_FILENAME="Megaman VI (U) [!].nes"
set SCRIPTNAME="megaman6"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
java -jar Hextractor.jar -a %SCRIPTNAME%Menu.tbl %T_FILENAME% %SCRIPTNAME%Menu.ext %SCRIPTNAME%Menu.off
java -jar Hextractor.jar -a %SCRIPTNAME%Select.tbl %T_FILENAME% %SCRIPTNAME%Select.ext %SCRIPTNAME%Select.off
java -jar Hextractor.jar -a %SCRIPTNAME%Title.tbl %T_FILENAME% %SCRIPTNAME%Title.ext %SCRIPTNAME%Title.off
java -jar Hextractor.jar -a %SCRIPTNAME%Adaptor.tbl %T_FILENAME% %SCRIPTNAME%Adaptor.ext %SCRIPTNAME%Adaptor.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt2.tbl %T_FILENAME% %SCRIPTNAME%Alt2.ext %SCRIPTNAME%Alt2.off
java -jar Hextractor.jar -a %SCRIPTNAME%Credits.tbl %T_FILENAME% %SCRIPTNAME%Credits.ext %SCRIPTNAME%Credits.off
pause
