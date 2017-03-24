class ManMailer < ApplicationMailer

  def creation_confirmation(man)
    @man = man

    if @man.user.email
      mail(
        to:       @man.user.email,
        subject:  "Man #{@man.name} created!"
      )
    end
  end
end
