@echo off
set T_FILENAME="World of Illusion Starring Mickey Mouse & Donald Duck (U) [!].bin"
set SCRIPTNAME="worldofillusionstarringmickeymousedonaldducksmd"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
