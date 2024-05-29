local smtp = require("socket.smtp")

-- SMTP server details
local smtp_server = "smtp.example.com"
local smtp_port = 587
local smtp_user = "your_username"
local smtp_password = "your_password"

-- Email details
local from = "<your_email@example.com>"
local to = "<recipient_email@example.com>"
local subject = "Test Email"
local body = "This is a test email sent from Lua."

-- Email headers and message
local message = {
    headers = {
        from = from,
        to = to,
        subject = subject
    },
    body = body
}

-- SMTP authentication
local auth = smtp.login(smtp_user, smtp_password)

-- Sending the email
local result, error_message = smtp.send {
    from = from,
    rcpt = to,
    source = smtp.message(message),
    server = smtp_server,
    port = smtp_port,
    user = smtp_user,
    password = smtp_password,
    authentication = auth,
    ssl = { enable = true, verify_cert = false }
}

if result then
    print("Email sent successfully!")
else
    print("Failed to send email: " .. error_message)
end

