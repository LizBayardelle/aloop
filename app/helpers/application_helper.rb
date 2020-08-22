module ApplicationHelper
  # include Spree::AuthenticationHelpers
  # include Spree::Core::ControllerHelpers::Auth
  # include Spree::Core::ControllerHelpers::Common
  # include Spree::Core::ControllerHelpers::Order
  # include Spree::Core::ControllerHelpers::Store
  # helper 'spree/base'

  def phone_number_link(text)
    sets_of_numbers = text.scan(/[0-9]+/)
    number = "+1-#{sets_of_numbers.join('-')}"
    link_to text, "tel:#{number}"
  end
end
