@echo off
set T_FILENAME="TR_Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set S_FILENAME="Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set SCRIPTNAME="gokuakudoumeidumpmatsumotosms"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcsms %T_FILENAME%
pause
