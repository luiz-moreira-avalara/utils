$FileNames = @()
Get-ChildItem -Recurse *.xsd | foreach {
  $FileNames += $_.FullName
}
xsd.exe /c /l:cs /n:Grc.Client.REINF.WebService.Models $FileNames