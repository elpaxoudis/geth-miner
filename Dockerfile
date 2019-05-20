FROM ethereum/client-go:alltools-stable

ADD node-volume .

ENTRYPOINT [ "./run.sh" ]