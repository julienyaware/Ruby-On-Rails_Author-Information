class Publisher < ApplicationRecord
    belongs_to(
        :publisher,
        class_name: 'Author',
        foreign_key: 'authors_id',
        inverse_of: :publishers
      )
end