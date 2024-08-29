class Question < ApplicationRecord
  belongs_to :survey
  belongs_to :type
  validates :type, presence: true
  has_many :answers, dependent: :destroy
  validates :position, uniqueness: true, presence: true
  validate :validate_mutually_exclusive_selections, if: :exclusive_type?

  private

  # Verify if question is of the type checkbox or radio button
  def exclusive_type?
    %w[Checkbox Radio Button].include?(type)
  end

  def validate_mutually_exclusive_selections
    if answers.size > 5
      errors.add(:answers, "must have maximun  5 mutually exclusive selections for Checkbox or Radio Button questions")
    end
  end
end
