#!/bin/bash
source config.sh

if [ -z "$user_id" ]; then
	echo "Error: user_id in config not set."
else
	source find-prototype-region.sh

	if [[ "$region" != "" ]]; then
		source get-tags.sh
		source vars.sh

		source deploy-app-code.sh
		source create-ami.sh
		source get-security-group-id.sh
		source create-launch-configuration.sh
		source use-new-launch-configuration.sh
		source scale-up.sh
		source wait-scale-up.sh
		source scale-down.sh
		source clear-redis.sh
	else
		echo "Error: prototype not found"
	fi
fi
