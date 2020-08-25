#!/usr/bin/env ruby

# Script to create nginx proxy on demand
# Usage: `proxy.sh {up|down} hostname [port]`

# Proxy class that allows to create nginx proxy on demand.
# It assumes nginx has been installed via homebrew.
#
# To initialze the class provide host and port (optinally) and then call:
#   - `create!` to create the proxy
#   - `destroy!` to destroy the proxy
class Proxy
  NGINX_CONFIG_PATH = '/usr/local/etc/nginx/servers/'

  def initialize(hostname, port = nil)
    @hostname = hostname
    @port = port
  end

  def create!
    File.open(config_path, 'w+') do |io|
      require 'erb'
      config = ERB.new(config_template).result(binding)
      io.write(config)
    end
    reload!
  end

  def destroy!
    return unless File.exist?(config_path)
    File.unlink(config_path)
    reload!
  end

  private

  attr_reader :hostname, :port

  def config_path
    File.join(NGINX_CONFIG_PATH, "#{hostname}.conf")
  end

  def config_template
    <<-EOT
server {
  listen 80;
  server_name <%= hostname %>;
  access_log /usr/local/var/log/nginx/<%= hostname %>.access.log;

  location / {
    proxy_pass  http://127.0.0.1:<%= port %>;
  }
}
EOT

# server {
#   listen 443 ssl;
#   server_name <%= hostname %>;
#   access_log /usr/local/var/log/nginx/<%= hostname %>.access.log;

#   ssl_certificate /usr/local/etc/nginx/nginx.crt;
#   ssl_certificate_key /usr/local/etc/nginx/nginx.key;
#   ssl on;
#   ssl_session_cache  builtin:1000  shared:SSL:10m;
#   ssl_protocols  TLSv1 TLSv1.1 TLSv1.2;
#   ssl_ciphers HIGH:!aNULL:!eNULL:!EXPORT:!CAMELLIA:!DES:!MD5:!PSK:!RC4;
#   ssl_prefer_server_ciphers on;

#   location / {
#     proxy_pass  http://127.0.0.1:<%= port %>;
#   }
# }
#     EOT
  end

  def reload!
    `brew services restart nginx`
  end
end

case ARGV[0]
when 'up'
  hostname = ARGV[1]
  port = ARGV[2]
  puts "Proxy: starting for #{hostname} under 127.0.0.1:#{port}"
  Proxy.new(hostname, port).create!
when 'down'
  hostname = ARGV[1]
  puts "Proxy: shuting down for #{hostname}"
  Proxy.new(hostname).destroy!
else
  raise ArgumentError, "Proxy: #{ARGV[0]} is not supported"
end
