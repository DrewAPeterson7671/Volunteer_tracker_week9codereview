class Volunteer
  attr_reader :id
  attr_accessor :name, :project_id

  def initialize(attributes)
    @name = attributes.fetch(:name1)
    @project_id = attributes.fetch(:project_id)
    @id = attributes.fetch(:id)
  end

end
