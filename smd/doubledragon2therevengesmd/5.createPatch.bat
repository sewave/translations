@echo off
set T_FILENAME="TR_Double Dragon 2 - The Revenge (J) [!].gen"
set S_FILENAME="Double Dragon 2 - The Revenge (J) [!].gen"
set SCRIPTNAME="doubledragon2therevengesmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
