class Answer < ApplicationRecord
  belongs_to :question
  validates :position, presence: true, if: :requires_position?

  private

  # Veryfy question type
  def requires_position?
    %w[Checkbox Radio Button].include?(question.type)
  end

end
