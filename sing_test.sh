#!/bin/bash

PR=$1
EXPORT="/dev/shm/easybuild"

rm -rf $EXPORT

mkdir -p $EXPORT

singularity run -B ./etc:/easybuild/etc/easybuild.d -B $EXPORT:/export easybuild.img --debug --robot --from-pr=$PR --upload-test-report --github-user=rjeschmi

rm -rf $EXPORT
