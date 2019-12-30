class Task < ApplicationRecord
    has_many :taggings
    has_many :tags, through: :taggings
    # belongs_to :user
    
    def all_tags=(names)
        self.tags= names.split(",").map do |name|
            Tag.where(name: name.strip).first_or_create!
        end
    end

    def all_tags
        self.tags.map(&:name).join(", ")
    end


end
