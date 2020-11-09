require 'pry'

class Project 
    attr_accessor :title 

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        ProjectBacker.all.collect do |pb| 
            if pb.project == self 
                pb.backer
            end
        end.compact
    end







end
