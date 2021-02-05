# make a stupid directory
stupid_dir <- file.path(Sys.getenv("TEMP"), "delete_me_later")

if(!dir.exists(stupid_dir)){
  dir.create(path = stupid_dir)
}

# move into the directory
setwd("Homework/homework_01")

stupid_dir <- getwd()

# a data frame to write to a file
x <- data.frame(foo = "bar")

# make some stupidly named files, Dec 16, 2021
write.csv(x = x, file = file.path(stupid_dir, "file 121621.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12_16_21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12-16-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 16-12-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_121621.csv"), quote = FALSE, row.names = FALSE)

# make some stupidly named files, Dec 17, 2021
write.csv(x = x, file = file.path(stupid_dir, "file 121721.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12_17_21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 12-17-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file 17-12-21.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_121721.csv"), quote = FALSE, row.names = FALSE)

# write two logically named files
write.csv(x = x, file = file.path(stupid_dir, "file_20211216.csv"), quote = FALSE, row.names = FALSE)
write.csv(x = x, file = file.path(stupid_dir, "file_20211217.csv"), quote = FALSE, row.names = FALSE)

message("which file is newer?")
write.csv(list.files(stupid_dir), quote = FALSE, row.names = FALSE)
message("which file is older?")
write.csv(sort(list.files(stupid_dir), decreasing = TRUE), quote = FALSE, row.names = FALSE)

message(paste("You should be convinced that yyyymmdd is a better way to name files by date.\nYour reward will be to delete", stupid_dir))




file_name <- c("Instrument_v.20 - bilingual.docx"
,"Master_Durham.csv"
,"Master_Durham.xlsx"
,"Durham emails_Nov 30.xlsx"
,"NJ emails_Nov 30.xlsx"
,"Durham tasks_Nov 30.xlsx"
,"Master_Durham_v2.csv"
,"Master_Durham_v2.xlsx"
,"NJ emails_December 7.xlsx"
,"NJ phone numbers_Nov 30.xlsx"
,"Pitt phone numbers_December 7.xlsx"
,"Pitt phone numbers_Nov 30.xlsx"
,"Fraud and quota report_v1.xlsx"
,"Fraud and quota report_v2.xlsx"
,"Rutgers_people_to_pay_12_11_2020.xlsx"
,"Durham emails_Dec 14.xlsx"
,"Durham phone numbers_Dec 14.xlsx"
,"Export_1215.7z"
,"NJ emails_December 14.xlsx"
,"NJ phone numbers_December 14.xlsx"
,"VR_Dec1420_Durham.xlsx"
,"VR_NJ_Dec1420.xlsx"
,"transfer_0105.zip"
,"Fraud and quota report_v3.xlsx"
,"Fraud and quota report_v4.xlsx"
,"test1.dta")





date <- c("2020-10-13",
          "2020-11-30",
          "2020-11-30",
          "2020-12-04",
          "2020-12-04", "2020-12-07", "2020-12-07",
"2020-12-07",
"2020-12-07",
"2020-12-07",
"2020-12-07",
"2020-12-07",
"2020-12-11",
"2020-12-11",
"2020-12-11",
"2020-12-15",
"2020-12-15",
"2020-12-15",
"2020-12-15",
"2020-12-15",
"2020-12-15",
"2020-12-15",
"2021-01-05",
"2021-01-07",
"2021-01-07",
"2021-01-08")



file_name <- c("Instrument_v.20 - bilingual.docx"
               ,"Master_Durham.csv"
               ,"Master_Durham.xlsx"
               ,"Durham emails_Nov 30.xlsx"
               ,"NJ emails_Nov 30.xlsx"
               ,"Durham tasks_Nov 30.xlsx"
               ,"Master_Durham_v2.csv"
               ,"Master_Durham_v2.xlsx"
               ,"NJ emails_December 7.xlsx"
               ,"NJ phone numbers_Nov 30.xlsx"
               ,"Pitt phone numbers_December 7.xlsx"
               ,"Pitt phone numbers_Nov 30.xlsx"
               ,"Fraud and quota report_v1.xlsx"
               ,"Fraud and quota report_v2.xlsx"
               ,"Rutgers_people_to_pay_12_11_2020.xlsx"
               ,"Durham emails_Dec 14.xlsx"
               ,"Durham phone numbers_Dec 14.xlsx"
               ,"Export_1215.7z"
               ,"NJ emails_December 14.xlsx"
               ,"NJ phone numbers_December 14.xlsx"
               ,"VR_Dec1420_Durham.xlsx"
               ,"VR_NJ_Dec1420.xlsx"
               ,"transfer_0105.zip"
               ,"Fraud and quota report_v3.xlsx"
               ,"Fraud and quota report_v4.xlsx"
               ,"test1.dta")

library(tidyverse)
table_1 <- tibble(date, file_name)

new_file_name <- c("instrument_v_20_bilingual.docx", "master_durham.csv", "master_durham.xlsx", "durham_emails_30nov.xlsx", "nj_emails_30nov.xlsx", "durham_tasks_30nov.xlsx", 
                   "master_durham_v2.csv", "master_durham_v2.xlsx", "nj_emails_7dec.xlsx", "nj_phone_numbers_30nov.xlsx", "pitt_phone_numbers_7dec.xlsx","pitt_phone_numbers_30nov.xlsx",
                   "fraud_quota_report_v1.xlsx", "fraud_quota_report_v2.xlsx", "rutgers_people_topay_20201211.xlsx", "durham_emails_14dec.xlsx", 
                   "durham_phone_numbers_14dec.xlsx", "export_15dec.7z", "nj_emails_14dec.xlsx", "nj_phone_numbers_14dec.xlsx", "vr_durham_20201214.xlsx",
                   "vr_nj_20201214.xlsx", "transfer_5jan.zip", "fraud_quota_report_v3.xlsx", "fraud_quota_report_v4.xlsx", "test_1.dta")

table_2 <- bind_cols(table_1, new_file_name) %>%
  rename(new_file_name="...3")

library(kableExtra)
kable(table_2)

