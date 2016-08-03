class Task < ApplicationRecord
  validates :title, presence: true

  def link
    Rails.application.routes.url_helpers.task_path(self)
  end
end
