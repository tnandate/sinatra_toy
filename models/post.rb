require_relative 'db'

class Post
  attr_reader :id, :name, :body, :topic_id, :created_at, :updated_at

  def initialize(id: nil, name: nil, body:, topic_id:, created_at: nil, updated_at: nil)
    @id         = id
    @name       = name
    @body       = body
    @topic_id   = topic_id
    @created_at = created_at
    @updated_at = updated_at
  end

  def self.of_topic(topic_id)
    DB.query("SELECT * FROM posts WHERE topic_id = #{topic_id}").map { |hash| new(hash) }
  end

  def save
    DB.query("INSERT INTO posts (name, body, topic_id, created_at, updated_at) VALUES ('#{@name}', '#{@body}', '#{@topic_id}', NOW(), NOW())")
  end
end
