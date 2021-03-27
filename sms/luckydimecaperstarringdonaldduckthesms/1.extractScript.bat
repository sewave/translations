@echo off
set T_FILENAME="Lucky Dime Caper Starring Donald Duck, The (Europe, Brazil).sms"
set SCRIPTNAME="luckydimecaperstarringdonaldduckthesms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
java -jar Hextractor.jar -a %SCRIPTNAME%Alt.tbl %T_FILENAME% %SCRIPTNAME%Alt.ext %SCRIPTNAME%Alt.off
pause
