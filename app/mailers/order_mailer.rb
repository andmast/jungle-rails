class OrderMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.order_mailer.order_confirmation.subject
  #
  def order_confirmation(order)
    @order = order
    subject = "Your Jungle order has been placed. Order number: #{@order.id}"
    mail(to: @order.email, subject: subject)
  end
end
