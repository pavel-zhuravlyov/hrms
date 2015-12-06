class Note < ActiveRecord::Base
  self.inheritance_column = nil

  TYPES = [
    'Skype Conversation',
    'Skype Call',
    'Phone Call',
    'Tech Interview',
    'Test Assignment',
    'Expected Salary',
    'Decision',
    'CEO Opinion',
    'Was Recommended',
    'Other'
  ]

  belongs_to :person

  validates :type, :person, presence: true
  validates :type, inclusion: { in: TYPES }
end