require 'pry'



class Backer
    attr_reader :name

    
    
    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        ProjectBacker.all.select {|project| project.backer == self}.map {|title| title.project}
        
    end

end