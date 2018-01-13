if [[ ! -z "$INVOCATION_ID" ]]; then
    systemd-notify --booted
    if [[ echo $? == "0" ]]; then
	FIFO=/tmp/zebrakow-$INVOCATION_ID
	echo DONE > $FIFO
	rm -f $FIFO
    fi
fi
