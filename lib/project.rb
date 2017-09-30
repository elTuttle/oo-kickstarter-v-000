class Project
  attr_accessor :title, :backers

  def initialize(title)
    @title = title
    @backers = []
  end

  def add_backer(backer)
    if !backers.include(backer)
      @backers << project
      project.add_backer(self)
    end
  end
end
