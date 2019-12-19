require "graphql/rake_task"
GraphQL::RakeTask.new(load_schema: ->(_task) {
                                     require File.expand_path("../../config/environment", __dir__)
                                     VpvApiSchema
                                   },)
