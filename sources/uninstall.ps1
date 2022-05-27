Add-Type -AssemblyName  System.Windows.Forms 
$global:balloon = New-Object System.Windows.Forms.NotifyIcon 
Get-Member -InputObject  $Global:balloon 
[void](Register-ObjectEvent  -InputObject $balloon  -EventName MouseDoubleClick  -SourceIdentifier IconClicked  -Action {

  #Perform  cleanup actions on balloon tip

  $global:balloon.dispose()

  Unregister-Event  -SourceIdentifier IconClicked

  Remove-Job -Name IconClicked

  Remove-Variable  -Name balloon  -Scope Global

}) 
$path = (Get-Process -id $pid).Path

  $balloon.Icon  = [System.Drawing.Icon]::ExtractAssociatedIcon($path)
  [System.Windows.Forms.ToolTipIcon] | Get-Member -Static -Type Property 
$balloon.BalloonTipIcon  = [System.Windows.Forms.ToolTipIcon]::Error
$balloon.BalloonTipText  = 'WHY YOU UNINSTALLED ME?????? IM SO SAD NOW :('

  $balloon.BalloonTipTitle  = "BookRead" 
  $balloon.Visible  = $true 
  $balloon.ShowBalloonTip(5000) 