class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.post_created.subject
  #
  def post_created
    @greeting = "Hi"

    mail(
      from: "ravi.s@webkorps.com",
      to: User.first.email,
      cc:User.pluck(:email),
      bcc: "ravi.singhalcs2018@indoreinstitute.com",
      subject: "Testing Mail"
    )
  end
end
