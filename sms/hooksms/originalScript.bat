set T_FILENAME="Hook (Prototype) [!].sms"
set SCRIPTNAME="hook"
java -jar Hextractor.jar -a %SCRIPTNAME%.tbl %T_FILENAME% %SCRIPTNAME%.txt false 38D-450-00,748D-768F-00,3B3D9-3BFB8-FF
pause