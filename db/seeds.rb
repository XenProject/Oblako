# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
seed_file = Rails.root.join('db', 'seeds', 'test.yml')
config = YAML::load_file(seed_file)
hash = ActiveSupport::HashWithIndifferentAccess.new(config)["projects"]

hash.each do|project|
	pObj = Project.new
	project.each do |key, value|
		if(key != "todos")
			pObj.update(Hash[key,value])
		else
			value.each do |todo|
				tObj = Todo.create(todo)
				pObj.todos << tObj
			end
		end
	end
	pObj.save()
end