class Pdf < ApplicationRecord
  has_many :attachments, as: :attachable
end