class Project < ApplicationRecord
  has_attachments :photos, maximum: 8
  has_attachment :video
end
