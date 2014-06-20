# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


project_type_wiki = ProjectType.create({name: 'Wiki', description: 'Webpage anyone can edit' })
project_wikipedia = Project.create({name: "Wikipedia", description: "Wiki-driven encycolpedia", project_type: project_type_wiki})

tool_php = Tool.create({name: "PHP", description: "Scripting language"})
tool_linux = Tool.create({name: "Linux", description: "Operating System"})
tool_ide = Tool.create({name: "Integrated Development Environment (IDE)", description: 'Helps write and debug software.'})
tool_ruby = Tool.create({name: "Ruby", description: 'Language'})

ProjectsTool.create({project: project_wikipedia, tool: tool_php})
ProjectsTool.create({project: project_wikipedia, tool: tool_linux})