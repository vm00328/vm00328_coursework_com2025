# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  class ContactMailerPreview < ActionMailer::Preview
    def contact_email
    ContactMailer.contact_email("vm00328@surrey.ac.uk",
    "Vladislav Manolov", "0882419521", @message = "Hello")
    end
  end
end
