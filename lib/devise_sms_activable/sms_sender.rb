class Devise::SmsSender
  #Actually sends the sms token. feel free to modify and adapt to your provider and/or gem
  def self.send_sms(phone,message)
    @client = Twilio::REST::Client.new
    sms = @client.messages.create(from: '9415484228', to: phone, body: message)
 #   sms = Moonshado::Sms.new(phone, message)
    return sms
  end
end
