#!/usr/bin/env fish

set -x REGISTRY gcr.io
set -x REGISTRY_USER (gcloud config get-value core/project)

pfs function create hello \
             --git-repo https://github.com/shinyay/pfs-java-hello.git \
             --handler io.pivotal.syanagihara.functions.Hello \
             --image $REGISTRY/$REGISTRY_USER/hello \
             --verbose
