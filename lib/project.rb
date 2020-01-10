class Project
  attr_accessor :title1
  attr_reader :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  # def self.title
  #   return "fail"
  # end




end
