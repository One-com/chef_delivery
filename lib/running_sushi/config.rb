# Encoding: utf-8
# vim: syntax=ruby:expandtab:shiftwidth=2:softtabstop=2:tabstop=2

# Copyright 2013-2014 Facebook
# Copyright 2014-present One.com
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

require 'mixlib/config'
require 'logger'

module RunningSushi
  # Config file parser and config object
  # Uses Mixlib::Config v1 syntax so it works in Chef10 omnibus...
  # it's compatible with v2, so it should work in 11 too.
  class Config
    extend Mixlib::Config

    dry_run false
    verbosity Logger::WARN
    timestamp false
    config_file '/etc/chef/running_sushi_config.rb'
    pidfile '/var/run/running_sushi.pid'
    lockfile '/var/lock/running_sushi'
    master_path '/var/chef/running_sushi_work'
    repo_url nil
    reponame 'ops'
    pod_name nil
    user 'admin'
    pem '/etc/chef-server/admin.pem'
    chef_server_url 'https://127.0.0.1'
    client_path 'clients'
    cookbook_paths ['cookbooks']
    databag_path 'data_bags'
    environment_path 'environments'
    node_path 'nodes'
    role_path 'roles'
    role_local_path 'roles_local'
    rev_checkpoint 'running_sushi_revision'
    node_checkpoint 'node_upload_checkpoint'
    vcs_type 'git'
    vcs_path nil
    plugin_path '/etc/running_sushi_plugin.rb'
  end
end
