if [[ ! -z "$INVOCATION_ID" ]]; then
    systemd-notify --booted
    if [[ echo $? == "0" ]]; then
	systemd-notify --status="ebuild_tidyup_post: Finished build..."
	# systemd has a race where exiting too quickly may result in
	# no attribution of the notifications or status to the unit
	sleep 0.5
    fi
fi
