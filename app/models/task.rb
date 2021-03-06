class Task < ActiveRecord::Base
  belongs_to :list

  validates :description, presence: true
  validates :list_id, presence: true

  def push
    self.class.push self
    self
  end

  def self.push(task_message)
    @task_messages ||= []
    @task_messages << task_message
  end

  def self.create(options)
    new(options).tap { |cm| push cm }
  end

  def self.recent
    @task_messages ||= []
  end
end
