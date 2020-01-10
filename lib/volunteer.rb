class Volunteer
  attr_reader :id
  attr_accessor :name, :project_id

  def initialize(attributes)
    @name = attributes.fetch(:name)
    @project_id = attributes.fetch(:project_id)
    @id = attributes.fetch(:id)
  end

  def ==(volunteer_to_compare)
    (self.name() == volunteer_to_compare.name()) && (self.project_id() == volunteer_to_compare.project_id())
  end

  def self.get_volunteers(db_query)
    returned_volunteers = DB.exec(db_query)
    volunteers = []
    returned_volunteers.each() do |volunteer|
      name = volunteer.fetch('name')
      id = volunteer.fetch('id').to_i
      project_id = volunteer.fetch('project_id').to_i
      volunteers.push(Song.new({:name => name, :id => id, :project_id => project_id}))
    end
    volunteers
  end

  def self.all
    self.get_volunteers('SELECT * FROM volunteers;')
  end

  def save
    result = DB.exec("INSERT INTO volunteers (name, project_id) VALUES ('#{@name}', #{@project_id})")
    @id = result.first().fetch('id').to_i
  end

end
