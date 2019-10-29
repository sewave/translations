@echo off
set T_FILENAME="TR_Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set SCRIPTNAME="gokuakudoumeidumpmatsumotosms"
java -jar Hextractor.jar -eh %T_FILENAME% %SCRIPTNAME%.ext.hex
pause
