class Question < ApplicationRecord
  belongs_to :survey
  belongs_to :type
  validates :type, presence: true
  has_many :answers, dependent: :destroy
  validates :position, uniqueness: true, presence: true

  private

  # Verify if question is of the type checkbox or radio button
  def exclusive_type?
    %w[Checkbox Radio Button].include?(type)
  end
end
