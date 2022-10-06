function Component(){}

Component.prototype.createOperations = function()
{
	try {
		component.createOperations();
		if (installer.value("os") === "win") {
			component.addElevatedOperation("Execute", "@TargetDir@/VC_redist.x64.exe", "/norestart", "/quiet");
		}
	} catch (e) {
		print(e);
	}
}
