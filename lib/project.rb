class Project
  attr_reader :backers, :title
  
  def initialize(title)
    @title=title
    @backers= []
  end
  
  def add_backer(backer)
    @backers << backer
    backer.backed_projects.include?(self) ? nil : backer.back_project(self)
  end
  
end