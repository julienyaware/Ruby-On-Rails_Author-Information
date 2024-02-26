class Author < ApplicationRecord
    has_many(
    :publishers,
    class_name: 'Publisher',
    foreign_key: 'authors_id',
    inverse_of: :publisher,
    dependent: :destroy
  )
end
