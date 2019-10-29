@echo off
set T_FILENAME="Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set SCRIPTNAME="gokuakudoumeidumpmatsumotosms"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
