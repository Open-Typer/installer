#!/bin/bash

BINARYCREATOR=$1
if [[ "$BINARYCREATOR" == "" ]]; then
	if [[ `command -v binarycreator` != "" ]]; then
		BINARYCREATOR=binarycreator
	else
		echo "No binarycreator executable path specified!"
		exit 1
	fi
fi

REPOGEN=$2
if [[ "$REPOGEN" == "" ]]; then
	if [[ `command -v repogen` != "" ]]; then
		REPOGEN=repogen
	else
		echo "No repogen executable path specified!"
		exit 1
	fi
fi
echo "D: binarycreator: $BINARYCREATOR"
echo "D: repogen: $REPOGEN"
echo "Creating installer binary..."
$BINARYCREATOR --offline-only -c config/config.xml -p packages Open-Typer-installer || exit $?

echo "Generating repository..."
$REPOGEN -p packages repository || exit $?
git branch -D repository
git switch --orphan repository &&
mv repository/* ./ &&
rm -rf repository &&
echo "Open-Typer-installer*" > .gitignore &&
echo "packages/" >> .gitignore &&
git add -A &&
git commit -m "Generate repository" &&
git push -f --set-upstream origin repository
