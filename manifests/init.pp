# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include winacl
class winacl {
  exec { 'machinekayacl':
  command   => file('winacl/winacl.ps1'),git
  provider  => powershell,
}
}
