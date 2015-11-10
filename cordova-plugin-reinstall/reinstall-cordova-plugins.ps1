#
# cordova-plugin-reinstall.ps1
# uninstall all cordova plugins and then reinstall them
# used to update plugins or to reinstall them in case of erroneous plugin installation in platforms
#

$plugins = cordova plugin list;

foreach($plugin in $plugins)
{
	$pluginName = $plugin.Split(" ")[0];
	Write-Host $pluginName ":" -ForegroundColor Yellow;
    cordova plugin rm $pluginName | Write-Output;
    cordova plugin add $pluginName | Write-Output;
}