function Component() { }

Component.prototype.createOperations = function()
{
	component.createOperations();
	programName = "Open-Typer";
	programDescription = "Open-Typer training software";
	if (systemInfo.productType === "windows") {
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + "/" + programName + ".exe", "@StartMenuDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@/" + programName, "iconPath=@TargetDir@/" + programName + "/" + programName + ".exe",
			"iconId=0", "description=" + programDescription);
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + "/" + programName + ".exe", "@DesktopDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@/" + programName, "iconPath=@TargetDir@/" + programName + "/" + programName + ".exe",
			"iconId=0", "description=" + programDescription);
	}
}
