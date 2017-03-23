class ManMailer < ApplicationMailer

  def creation_confirmation(man)
    @man = man

    mail(
      to:       @man.user.email,
      subject:  "Man #{@man.name} created!"
    )
  end
end
