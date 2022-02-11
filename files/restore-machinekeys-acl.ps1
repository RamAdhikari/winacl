$Sddl='O:BAG:BAD:PAI(A;;0x12019f;;;WD)(A;;FA;;;BA)'
$TargetFolder='C:\ProgramData\Microsoft\Crypto\RSA\MachineKeys'
$SecDes=get-acl $TargetFolder;
$SecDes.setsecuritydescriptorsddlform($sddl);
set-acl -Path $TargetFolder -aclobject $Secdes