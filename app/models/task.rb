class Task < ApplicationRecord
  belongs_to :todo_list, dependent: :destroy

  # validates :status, inclusion: { in:['not-started', 'in-progress', 'complete'] }

  # STATUS_OPTIONS = [
  #   ['Not started', 'not-started'],
  #   ['In Progress', 'in-progress'],
  #   ['Complete', 'complete']
  # ]

  # def readable_status
  #   case status
  #   when 'not-started'
  #     'Not started'
  #   when 'in-progress'
  #     'In progress'
  #   when 'complete'
  #     'Complete'
  #   end
  # end

  # def color_status
  #   case status
  #   when 'not-started'
  #     puts '#000'
  #   when 'in-progress'
  #     puts '#0000ff'
  #   when 'complete'
  #     puts '#00FF00'
  #   end
  # end

  # def complete?
  #   status == 'complete'
  # end

  # def in_progress?
  #   status == 'in-progress'
  # end

  # def not_started?
  #   status == 'not-started'
  # end

  # Esse scope retornará as tasks que estão como completas
  scope :completed, -> do
    where(completed: true)
  end
end
