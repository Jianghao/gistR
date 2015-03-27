# using 163 because it does not need authorize code
# if("mailR" %in% rownames(installed.packages()) == FALSE) install.packages("mailR")
# library(mailR)
mailR163 <- function(subject, body="Hello World"){
  send.mail(from = "sendmailR@163.com",
            to = "240798582@qq.com",
            subject = subject,
            body = body,
            smtp = list(host.name = "smtp.163.com", port = 465, 
                        user.name = "sendmailR@163.com", passwd = "wang123456", ssl = TRUE),
            authenticate = TRUE,
            send = TRUE)
  return(NULL)
}
