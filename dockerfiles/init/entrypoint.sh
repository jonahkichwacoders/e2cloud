#!/bin/sh
# Copyright (c) 2012-2016 Codenvy, S.A.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
#
# Contributors:
#   Tyler Jewell - Initial Implementation
#

cp -rf /files/docs /copy

# do not copy e2cloud.env if exist
if [ ! -f  /copy/e2cloud.env ]; then
    cp /etc/puppet/manifests/e2cloud.env /copy
fi
