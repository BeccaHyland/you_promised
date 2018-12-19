class Promise < ApplicationRecord
  enum status: {"in progress": 0, "abandoned": 1, "done": 2}
end
