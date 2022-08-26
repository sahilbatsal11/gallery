ActionMailer::Base.smtp_settings = {
    :address => "127.0.0.1",
    :port => "1025",
    :domain => "localhost.net",
    :authentication => "plain",
}