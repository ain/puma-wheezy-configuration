#!/usr/bin/env puma

environment 'production'

bind 'tcp://0.0.0.0:80'

daemonize true

pidfile '/usr/share/rails/application/current/tmp/pids/puma.pid'
state_path '/usr/share/rails/application/current/tmp/pids/puma.state'
activate_control_app 'unix:///var/run/pumactl.sock'