module Bookyt
  module Entities
    class PhoneNumber < Bookyt::Entities::Base
      PHONE_TYPE_MAPPING = {
        'Tel. geschäft' => 'office',
        'Tel. privat' => 'private',
        'Handy' => 'mobile',
      }

      expose :type do |phone_number|
        PHONE_TYPE_MAPPING[phone_number.phone_number_type]
      end
      expose :number
    end
  end
end
