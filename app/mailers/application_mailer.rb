class ApplicationMailer < ActionMailer::Base
  default to: 'vm00328@surrey.ac.uk', from: "info@mywebsite.com"
  layout 'mailer'
end
