class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  class EmailTaken < StandardError;end

  after_validation :check_for_email_taken

  private

  def check_for_email_taken
    return unless errors.details.key?(:email)

    raise EmailTaken if only_email_errors? && only_email_taken_errors?

    scrub_email_taken_errors
  end

  def only_email_errors?
    errors.details.keys == [:email]
  end

  def only_email_taken_errors?
    errors.details[:email].collect { |detail| detail[:error] }.uniq == [:taken]
  end

  def scrub_email_taken_errors
    errors.details[:email].reject! {|detail| detail[:error] == :taken}
    errors.details.delete(:email) if errors.details[:email].empty?

    errors.messages[:email].reject! {|message| message == 'has already been taken'}
    errors.messages.delete(:email) if errors.messages[:email].empty?
  end
end
