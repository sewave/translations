@echo off
set T_FILENAME="TR_Sagaia (J) [!].gb"
set S_FILENAME="Sagaia (J) [!].gb"
set SCRIPTNAME="sagaiagb"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
