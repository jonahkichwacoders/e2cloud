# Copyright (c) 2012-2016 Codenvy, S.A.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#

# Initializes an empty directory with the templates needed to configure and run Che.
#
# build:
#   docker build -t jonahkichwacoders/e2cloud-init:<version> .
#
# use (to copy files onto folder):
#   docker run -v $(pwd):/e2cloud jonahkichwacoders/e2cloud-init:<version>
#
# use (to run puppet config):
#   docker run <puppet-mounts> --entrypoint=/usr/bin/puppet jonahkichwacoders/e2cloud-init:<version> apply <puppet-apply-options>

FROM puppet/puppet-agent-alpine:4.6.2

# install openssh needed to generate ssh keys
RUN apk --update add openssh \
  && rm -rf /var/cache/apk/*

RUN mkdir -p /files \
    && mkdir -p /etc/puppet/modules \
    && mkdir -p /etc/puppet/manifests \
    && mkdir -p /files/docs

COPY manifests /etc/puppet/manifests
COPY modules /etc/puppet/modules
COPY docs /files/docs
COPY entrypoint.sh /
RUN chmod +x entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
