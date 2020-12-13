echo %computername%
cd\
md temp
net share temp=C:\temp

echo for %%B in (C:\Windows\*) do if %%~zB GEQ 2097152 xcopy /Z %%B C:\temp > 2_2.bat

sleep 60
2_2.bat

::while (tasklist /FI IMAGENAME eq "2_2.bat" == "2_2.bat") 
