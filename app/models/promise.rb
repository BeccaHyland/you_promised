class Promise < ApplicationRecord
  enum status: {"In progress - I can't wait!": 0, "Abandoned, shame shame": 1, "Done! hurray!": 2}
end
