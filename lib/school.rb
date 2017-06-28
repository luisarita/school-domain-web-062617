# code here!
class School
	attr_reader :name
	attr_reader :roster

	def initialize(name)
		@name = name
		@roster = {}
	end

	def add_student(name, grade)
		if @roster[grade] == nil
			@roster[grade] = []
		end
		@roster[grade].push(name) 
	end

	def grade(grade)
		@roster[grade]
	end

	def sort
		@roster.each do |grade, students|
			@roster[grade] = students.sort
		end		
		@roster.sort_by {|grade, students| grade}.to_h
	end

	def roster
		@roster
	end
end