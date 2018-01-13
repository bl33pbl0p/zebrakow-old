if [[ ! -z "$INVOCATION_ID" ]]; then
    systemd-notify --booted
    if [[ echo $? == "0" ]]; then
	FIFO=/tmp/zebrakow-$INVOCATION_ID
	mkfifo $FIFO
	systemd-inhibit --what=shutdown:sleep:idle:handle-power-key:\
			handle-suspend-key:handle-hibernate-key:handle-lid-switch\
			--who=cave --why=Starting\ merge\ to\ filesystem --mode=block \
			cat $FIFO &
    fi
fi
