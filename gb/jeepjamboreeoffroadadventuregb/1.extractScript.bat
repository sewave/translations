@echo off
set T_FILENAME="Jeep Jamboree - Off-Road Adventure (USA).gb"
set SCRIPTNAME="jeepjamboreeoffroadadventuregb"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.ext %SCRIPTNAME%.off
pause
