# == Schema Information
#
# Table name: inquiries
#
#  id         :integer          not null, primary key
#  name       :string
#  email      :string
#  message    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Inquiry < ApplicationRecord

  attr_accessor :name, :email, :content

  validates :name,
    presence: true

  validates :email,
    presence: true

  validates :message,
    presence: true


end
