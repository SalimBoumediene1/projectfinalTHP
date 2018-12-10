class ForestMailer < ActionMailer::Base
    
    def contact(user)
        email = { :from_email   => "salimboumediene@gmail.com",
        :from_name    => "Salim",
        :subject      => "Hello",
        :text_part    => "Hi",
        :recipients   => [{:email => "#{user}"}] }

        test = Mailjet::Send.create(email)

        # retrieve the API response
        p test.attributes['Sent']
    end

    def awesome_mail(user)

        mail(
          to: user.email,
          delivery_method_options: { api_key: "#{Rails.application.credentials.api_public_key_mail}",
                                     secret_key: "#{Rails.application.credentials.api_secret_key_mail}" }
        )
      end

  end