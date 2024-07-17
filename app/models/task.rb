class Task < ApplicationRecord
  include Rails.application.routes.url_helpers 

  has_one_attached :attachment

  validates :title, presence: true, length: { maximum: 50 }
  validates :description, length: { maximum: 150 }


  def as_json(options = {})
    super(options).merge(attachment_url: attachment_url)
  end

  private

  def attachment_url
    Rails.application.routes.url_helpers.rails_blob_url(attachment) if attachment.attached?
  end
end
