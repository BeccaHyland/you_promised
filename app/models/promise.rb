class Promise < ApplicationRecord
  enum status: [:in_progress, :abandoned, :done]
end
