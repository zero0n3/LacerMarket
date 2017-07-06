class Content < ApplicationRecord
  belongs_to :user

  has_attached_file :cover, styles: { medium: "300x>", thumb: "100x>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :cover, content_type: /\Aimage\/.*\z/,
  message: "solo immagini sono supportate"

  has_attached_file :allegato
  validates_attachment_content_type :allegato, :content_type => ['application/pdf', 'audio/mp3'],
  message: "Formato non supported"

end
