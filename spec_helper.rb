require 'byebug'

RSpec.configure do |config|
  config.example_status_persistence_file_path = "tmp/spec/examples.txt"

  if config.files_to_run.one?
    config.default_formatter = "doc"
  end

  config.order = :random

  Kernel.srand config.seed
end
