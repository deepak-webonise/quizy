# This file is used by Rack-based servers to start the application.

use Rack::Attack
require_relative 'config/environment'

run Rails.application
