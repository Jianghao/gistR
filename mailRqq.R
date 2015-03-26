if("mailR" %in% rownames(installed.packages()) == FALSE) install.packages("mailR")
library(mailR)
send.mail.qq <- function(subject, passwd, body="Hello World"){
  mailR::send.mail(from = "hellowangjh@qq.com",
            to = "hellowangjh@qq.com",
            subject = subject,
            body = body,
            smtp = list(host.name = "smtp.qq.com", port = 465, 
                        user.name = "hellowangjh@qq.com", passwd = passwd, ssl = TRUE),
            authenticate = TRUE,
            send = TRUE)
  return(NULL)
}
