require 'test_helper'
  class ContactMailerTest < ActionMailer::TestCase
    test "should return contact email" do
    mail = ContactMailer.contact_email("vm00328@surrey.ac.uk",
    "Vladislav Manolov", "0882419521", @message = "Hello")
    assert_equal ['vm00328@surrey.ac.uk'], mail.to
    assert_equal ['info@mywebsite.com'], mail.from
    end
end
