module Chewy
  module Search
    class Parameters
      module HashStorage
        def update!(other_value)
          value.merge!(normalize(other_value))
        end

      private

        def normalize(value)
          (value || {}).stringify_keys
        end
      end
    end
  end
end
