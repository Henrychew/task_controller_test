#question no.1
# require_relative '../../app/models/task'

# print "HI"
# name = gets.chomp
# Task.faker(name)

class TaskController

	def self.add(new_task)
		new_task = Task.create(title: new_task, doing: "")
			View.display_item_successfully_added(new_task.title)
	end

	def self.list
		Task.all.each do |t|
			View.display_list(t.id, t.title)
		end
	end
	
	def self.delete(id)
		task_delete = Task.find_by(id: id)
		View.delete(task_delete)
		task_delete.destroy
	end

	def self.update(id)
		new_update = Task.find_by(id: id)
		View.update(new_update)
		new_update.update(completed: true)
	end
end

class View
	def self.display_item_successfully_added(new_task_title)
		puts "Well done! #{new_task_title} has added!"
	end

	def self.display_list(id, title)
		puts "#{id}. #{title}"
	end

	def self.delete(task)
		puts "The title #{task.title} has deleted!"
	end

	def self.update(task)
		puts "Congratz! #{task.title} has completed!"
	end

end

