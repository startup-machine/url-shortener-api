class Url < ApplicationRecord
    validates :original_url, :short_url, presence: true
end
