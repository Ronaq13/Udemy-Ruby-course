require 'yaml'
require_relative 'services/build_vechile'

build_file_path = File.expand_path(File.join(File.dirname(__FILE__), 'build.yaml'))

vechiles_reqs = YAML.load_file(build_file_path)

build_vechiles = BuildVehicle.call({
  cars_reqs: vechiles_reqs['cars'],
  bikes_reqs: vechiles_reqs['bikes']
})

build_vechiles[:cars].map { |build_car| build_car.describe }
build_vechiles[:bikes].map { |build_bike| build_bike.describe }
