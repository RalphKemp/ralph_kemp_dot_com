class Project < ApplicationRecord
  has_attachments :photos, maximum: 10
  has_attachments :videos, maximum: 1
end
