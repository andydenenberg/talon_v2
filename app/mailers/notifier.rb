class Notifier < ActionMailer::Base
  default :from => "talon@denenberg.net"

include SendGrid

  # send a signup email to the user, pass in the user object that contains the user's email address
  def notify_administrator(user)
    @user = user
    mail( :to => 'andy@denenberg.net' , # user.email 
          :subject => "A new Talon User has been created" ,
          :body => user.email + ' has been created' )
#         , :body => user.name + " " + user.email + " " + user.comments )
  end
end

# "name"
# "email"
# "reference"
# "phone"
# "comments"
# "verified"
# "created_at"