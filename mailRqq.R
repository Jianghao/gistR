# if("mailR" %in% rownames(installed.packages()) == FALSE) install.packages("mailR")
# library(mailR)
send.mail.qq <- function(subject, passwd, body="Hello World"){
  send.mail(from = "240798582@qq.com",
            to = "240798582@qq.com",
            subject = subject,
            body = body,
            smtp = list(host.name = "smtp.qq.com", port = 465, 
                        user.name = "240798582@qq.com", passwd = passwd, ssl = TRUE),
            authenticate = TRUE,
            send = TRUE)
  return(NULL)
}
