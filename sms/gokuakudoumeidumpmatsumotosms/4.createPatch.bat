@echo off
set T_FILENAME="TR_Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set S_FILENAME="Gokuaku Doumei Dump Matsumoto (J) [!].sms"
set SCRIPTNAME="gokuakudoumeidumpmatsumotosms"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
java -jar Hextractor.jar -frm %SCRIPTNAME%_readme.txt  %SCRIPTNAME%_readme.txt %S_FILENAME%
pause
