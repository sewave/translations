@echo off
set T_FILENAME="language_1_40_e.gtf"
set T_FILENAME2="language_1_35.gtf"
set T_FILENAME3="syw_nocd.exe"
set S_FILENAME="language.gtf"
set S_FILENAME2="syw.exe"
set SCRIPTNAME="sevenyearswarpc"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
del %T_FILENAME2%
copy %S_FILENAME% %T_FILENAME2%
del %T_FILENAME3%
copy %S_FILENAME2% %T_FILENAME3%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%Alt.tbl tr_%SCRIPTNAME%.ext %T_FILENAME2%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME2%
java -jar Hextractor.jar -ih %SCRIPTNAME%NoCD.hex %T_FILENAME3%
pause
