class Survey < ApplicationRecord
  belongs_to :user
  has_many :questions, dependent: :destroy
  validate :validate_number_of_questions
  validates :title, presence: true

  private

  def validate_number_of_questions
    if questions.size > 10
      errors.add(:questions, "must have less then 10 questions")
    end
  end
end
