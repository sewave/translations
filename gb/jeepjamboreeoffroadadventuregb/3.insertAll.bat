@echo off
set T_FILENAME="TR_Jeep Jamboree - Off-Road Adventure (USA).gb"
set S_FILENAME="Jeep Jamboree - Off-Road Adventure (USA).gb"
set SCRIPTNAME="jeepjamboreeoffroadadventuregb"
del %T_FILENAME%
copy %S_FILENAME% %T_FILENAME%
java -jar Hextractor.jar -ih %SCRIPTNAME%.hex %T_FILENAME%
java -jar Hextractor.jar -h %SCRIPTNAME%.tbl tr_%SCRIPTNAME%.ext %T_FILENAME%
java -jar Hextractor.jar -fcg %T_FILENAME%
pause
