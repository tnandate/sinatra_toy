require_relative 'db'

class Topic
  attr_reader :id, :title, :created_at, :updated_at

  def initialize(id: nil, title: nil, created_at: nil, updated_at: nil)
    @id         = id
    @title      = title
    @created_at = created_at
    @updated_at = updated_at
  end

  def self.all
    DB.query('SELECT * FROM topics').map { |hash| new(hash) }
  end

  def self.find(id)
    result = DB.query("SELECT * FROM topics WHERE id = #{id} LIMIT 1").first
    new(result)
  end

  def save
    DB.query("INSERT INTO topics (title, created_at, updated_at) VALUES ('#{@title}', NOW(), NOW())")
  end
end
