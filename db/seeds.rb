# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

project_type = ProjectType.create({name: 'Wiki', description: 'Webpage anyone can edit' })
project = Project.create({name: "Wikipedia", description: "Wiki-driven encycolpedia", project_type: project_type})

tool = Tool.create({name: "PHP", description: "Scripting language"})

ProjectsTool.create({project: project, tool: tool})