#!/usr/bin/env bash
# sf.sh
# Salesforce CLI Plugins Install Script
# Reference: https://developer.salesforce.com/docs/platform/salesforce-cli-reference/guide/cli_reference.html
# ----------------------------------------

Copyright 2026 Qompass AI

Licensed under the Apache License, Version 2.0 the "License"
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

set -euo pipefail

SF_CONFIG_DIR="${HOME}/.config/sf"
ALLOWLIST_FILE="${SF_CONFIG_DIR}/unsignedPluginAllowList.json"

mkdir -p "${SF_CONFIG_DIR}"

cat > "${ALLOWLIST_FILE}" << 'JSON'
[
  "@cristiand391/sf-plugin-fzf-cmp",
  "@dx-cli-toolbox/sfdx-toolbox-package-utils",
  "@jayree/sfdx-plugin-manifest",
  "@jayree/sfdx-plugin-org",
  "@jayree/sfdx-plugin-prettier",
  "@jayree/sfdx-plugin-source",
  "aura-helper-sfdx",
  "heat-sfdx-cli",
  "kc-sf-plugin",
  "lightning-flow-scanner",
  "mo-dx-plugin",
  "sfdmu",
  "sfdx-browserforce-plugin",
  "sfdx-git-delta",
  "sfdx-git-packager",
  "sfdx-hardis",
  "sfdx-plugin-source-read",
  "sfdx-plugin-update-notifier",
  "shane-sfdx-plugins",
  "texei-sfdx-plugin"
]
JSON

sf plugins install \
    @cristiand391/sf-plugin-fzf-cmp \
    @dx-cli-toolbox/sfdx-toolbox-package-utils \
    @jayree/sfdx-plugin-manifest \
    @jayree/sfdx-plugin-org \
    @jayree/sfdx-plugin-prettier \
    @jayree/sfdx-plugin-source \
    @salesforce/plugin-agent \
    @salesforce/plugin-apex \
    @salesforce/plugin-api \
    @salesforce/plugin-auth \
    @salesforce/plugin-code-analyzer \
    @salesforce/plugin-community \
    @salesforce/plugin-custom-metadata \
    @salesforce/plugin-data \
    @salesforce/plugin-deploy-retrieve \
    @salesforce/plugin-dev \
    @salesforce/plugin-devops-center \
    @salesforce/plugin-flow \
    @salesforce/plugin-info \
    @salesforce/plugin-lightning-dev \
    @salesforce/plugin-limits \
    @salesforce/plugin-marketplace \
    @salesforce/plugin-org \
    @salesforce/plugin-packaging \
    @salesforce/plugin-schema \
    @salesforce/plugin-settings \
    @salesforce/plugin-signups \
    @salesforce/plugin-sobject \
    @salesforce/plugin-templates \
    @salesforce/plugin-ui-bundle-dev \
    @salesforce/plugin-user \
    @salesforce/sfdx-plugin-lwc-test \
    aura-helper-sfdx \
    heat-sfdx-cli \
    kc-sf-plugin \
    lightning-flow-scanner \
    mo-dx-plugin \
    sfdmu \
    sfdx-browserforce-plugin \
    sfdx-git-delta \
    sfdx-git-packager \
    sfdx-hardis \
    sfdx-plugin-source-read \
    sfdx-plugin-update-notifier \
    shane-sfdx-plugins \
    texei-sfdx-plugin
