crime <- SPD_Officer_Involved_Shooting_OIS_Data 
crime
service_summary <- crime %>%
  select(
    Years_of_SPD_Service
  )
service_summary

service_summary %>%
  summarize(
    rows = n(),
    mean = mean(Years_of_SPD_Service, na.rm = TRUE),
    median = median(Years_of_SPD_Service, na.rm = TRUE),
    range = max(Years_of_SPD_Service, na.rm = TRUE),
    std = sd(Years_of_SPD_Service, na.rm = TRUE),
    iqr = IQR(Years_of_SPD_Service, na.rm = TRUE)
  )

table(crime$Subject_Gender)
table(crime$Officer_Gender)
table(crime$Officer_Injured)
table(crime$Officer_Race)
table(crime$Subject_Race)


