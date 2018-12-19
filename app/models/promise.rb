class Promise < ApplicationRecord
  enum status: {in_progress: 0, abandoned: 1, done: 2]
end
