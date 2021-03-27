@echo off
set T_FILENAME="TR_Lucky Dime Caper Starring Donald Duck, The (Europe, Brazil).sms"
set S_FILENAME="Lucky Dime Caper Starring Donald Duck, The (Europe, Brazil).sms"
set SCRIPTNAME="luckydimecaperstarringdonaldduckthesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% 30965.dat 30965
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
