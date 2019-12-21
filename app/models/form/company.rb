# frozen_string_literal: true

module Form
  class Company < Company
    REGISTRABLE_ATTRIBUTES = %i[name telno mail_address store_address access_info
                                business_hour_start(1i)
                                business_hour_start(2i)
                                business_hour_start(3i)
                                business_hour_start(4i)
                                business_hour_start(5i)
                                business_hour_end(1i)
                                business_hour_end(2i)
                                business_hour_end(3i)
                                business_hour_end(4i)
                                business_hour_end(5i)
                                {:settlement_methods => []}].freeze
  end
end
