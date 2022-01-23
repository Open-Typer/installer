function Component() { }

Component.prototype.createOperations = function()
{
	component.createOperations();
	programName = "ClassMonitor";
	programDescription = "Open-Typer class monitoring software";
	if (systemInfo.productType === "windows") {
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + ".exe", "@StartMenuDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@", "iconPath=@TargetDir@/" + programName + ".exe",
			"iconId=0", "description=" + programDescription);
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + ".exe", "@DesktopDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@", "iconPath=@TargetDir@/" + programName + ".exe",
			"iconId=0", "description=" + programDescription);
	}
}
