# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include winacl
class winacl {
  exec { 'machinekayacl':
  command   => file('winacl/winacl.ps1'),
  unless    => 'if(((((((get-acl $TargetFolder).access)| select IdentityReference | ft -HideTableHeaders | Out-String).trim()) -replace "\`r\`n", "" ) -replace "              ",",") -ne "Everyone,BUILTIN\Administrators") { exit 1 }',
  provider  => powershell,
}
}
