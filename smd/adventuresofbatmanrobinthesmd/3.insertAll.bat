@echo off
set T_FILENAME="TR_Adventures of Batman & Robin, The (USA).md"
set S_FILENAME="Adventures of Batman & Robin, The (USA).md"
set SCRIPTNAME="adventuresofbatmanrobinthesmd"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcm %T_FILENAME%
pause
