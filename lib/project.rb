class Project
  attr_accessor :title
  attr_reader :id

  def initialize(attributes)
    @title = attributes.fetch(:title)
    @id = attributes.fetch(:id)
  end

  def save
    result = DB.exec("INSERT INTO projects (title) VALUES ('#{@title}') RETURNING id;")
    @id = result.first().fetch('id').to_i
  end

  def ==(project_to_compare)
    self.title() == project_to_compare.title()
  end

  def self.get_projects(db_query)
    returned_projects = DB.exec(db_query)
    projects = []
    returned_projects.each() do |project|
      title = project.fetch('title')
      id = project.fetch('id').to_i
      projects.push(Project.new({:title => name, :id => id}))
    end
    projects
  end

  def self.all
    self.get_albums('SELECT * FROM project;')
  end

  # def self.all
  #   self.
  #
  # end


end
