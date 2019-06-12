# frozen_string_literal: true

# Comment for the Rubocop gods
class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout "mailer"
end
