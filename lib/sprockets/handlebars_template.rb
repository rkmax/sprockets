require 'tilt'
require 'json'

module Sprockets
  class HandlebarsTemplate < Tilt::Template
    self.default_mime_type = 'application/javascript'

    def self.engine_initialized?

    end

    def initialize_engine

    end

    def prepare
    end

    # Compile template data
    def evaluate(scope, locals, &block)
      "Ember.TEMPLATES['#{scope.logical_path.split("/")[1..-1].join("/")}']=#{data.to_json};\n"
    end
  end
end
