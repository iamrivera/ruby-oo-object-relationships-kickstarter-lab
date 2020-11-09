require 'pry'

class Backer 
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        # binding.pry
        ProjectBacker.all.collect do |pb| 
            if pb.backer == self
                pb.project
            end
        end.compact
    end






end
