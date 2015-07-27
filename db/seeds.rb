require 'faker'
require_relative '../app/models/task'

# Task.create(title: "This is good!", doing:"Henry", completed:true )


Task.create(title: Faker::Lorem.sentence, doing: Faker::Name.name)