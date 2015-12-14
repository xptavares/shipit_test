class User < ActiveRecord::Base

  scope :created_before, ->(time) { where("created_at < ?", time) }

  validates :name, presence: true

  after_create :initialize_fields

  private

  def initialize_fields
    update token: SecureRandom.uuid
  end
end
