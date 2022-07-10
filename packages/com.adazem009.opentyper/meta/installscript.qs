function Component() { }

Component.prototype.createOperations = function()
{
	component.createOperations();
	programName = "Open-Typer";
	execName = "open-typer";
	programDescription = "Open-Typer training software";
	if (systemInfo.productType === "windows") {
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + "/" + execName + ".exe", "@StartMenuDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@/" + programName, "iconPath=@TargetDir@/" + programName + "/" + execName + ".exe",
			"iconId=0", "description=" + programDescription);
		component.addOperation("CreateShortcut", "@TargetDir@/" + programName + "/" + execName + ".exe", "@DesktopDir@/" + programName + ".lnk",
			"workingDirectory=@TargetDir@/" + programName, "iconPath=@TargetDir@/" + programName + "/" + execName + ".exe",
			"iconId=0", "description=" + programDescription);
	}
}
