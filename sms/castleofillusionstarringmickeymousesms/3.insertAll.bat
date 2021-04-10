@echo off
set T_FILENAME="TR_Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set S_FILENAME="Castle of Illusion Starring Mickey Mouse (USA, Brazil).sms"
set SCRIPTNAME="castleofillusionstarringmickeymousesms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%Alt.ext %T_FILENAME%
java -jar Hextractor.jar -if %T_FILENAME% title_14080.dat 14080
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
