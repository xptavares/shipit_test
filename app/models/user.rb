class User < ActiveRecord::Base
  validates :name, presence: true

  after_create :initialize_fields

  private

  def initialize_fields
    update token: SecureRandom.uuid
  end
end
