#!/bin/bash
# Copyright (c) Facebook, Inc. and its affiliates.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -efx -o pipefail

# install google-cloud-cpp dependencies (ubuntu 22.04)
# https://github.com/googleapis/google-cloud-cpp/blob/main/doc/packaging.md#required-libraries
if which apt; then
  export DEBIAN_FRONTEND=noninteractive
  apt update
  apt --no-install-recommends install -y \
    apt-transport-https \
    apt-utils \
    automake \
    build-essential \
    ccache \
    cmake \
    ca-certificates \
    curl \
    git \
    gcc \
    g++ \
    libc-ares-dev \
    libc-ares2 \
    libcurl4-openssl-dev \
    libre2-dev \
    libssl-dev \
    m4 \
    make \
    pkg-config \
    tar \
    wget \
    zlib1g-dev
elif which dnf; then \
  dnf install -y \
    ccache \
    cmake \
    findutils \
    gcc-c++ \
    git \
    make \
    openssl-devel \
    patch \
    zlib-devel \
    libcurl-devel \
    c-ares-devel \
    re2-devel
fi
