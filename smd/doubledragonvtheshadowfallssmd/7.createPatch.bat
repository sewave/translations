@echo off
set T_FILENAME="TR_Double Dragon V - The Shadow Falls (U) [!].gen"
set S_FILENAME="Double Dragon V - The Shadow Falls (U) [!].gen"
set SCRIPTNAME="doubledragonvtheshadowfallssmd"
java -jar Hextractor.jar -cip %S_FILENAME% %T_FILENAME% %SCRIPTNAME%.ips
pause
