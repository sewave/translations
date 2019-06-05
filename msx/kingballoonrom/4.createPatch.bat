@echo off
set T_FILENAME="TR_King & Balloon (1984) (Namcot) (J).rom"
set S_FILENAME="King & Balloon (1984) (Namcot) (J).rom"
set SCRIPTNAME="kingballoonrom"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
