$FileNames = @()
Get-ChildItem -Recurse *.xsd | foreach {
  $FileNames += $_.FullName
}
xsd.exe /c /l:cs /n:MyProject.Xsds $FileNames
