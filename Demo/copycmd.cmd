echo ��ʼִ�� >ret_copy.txt
set var=0
:continue
set /a var+=1
echo ��%var%��ѭ��
 call :sub1 >>ret_copy.txt
if %var% lss 100 goto continue
echo ���� 
goto exit

:sub1 
copy IRobotQ_Ctl_1.exe IRobotQ_Ctl_0.exe
copy IRobotQ_Ctl_2.exe IRobotQ_Ctl_0.exe
goto:eof

:exit

pause

echo ���� >>ret_copy.txt