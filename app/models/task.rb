class Task < ActiveRecord::Base
  validates :name, :presence => true

  def self.done_tasks
  @done_tasks = Task.where(:done => true)
  # @done_tasks
  end

  def self.not_done_tasks
    @not_done_tasks = Task.where(:done => false)
    # @not_done_tasks
  end
end
