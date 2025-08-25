library(rStrava)
library(dplyr)

app_name <- 'R_API' # chosen by user
app_client_id  <- '28803' # an integer, assigned by Strava
app_secret <- '5818ad04457f2d4e9a52bd4f6bcdf6c3bfff09d1' # an alphanumeric secret, assigned by Strava

# create the authentication token
stoken <- httr::config(
  token = strava_oauth(
    app_name, 
    app_client_id, 
    app_secret, 
    app_scope="activity:read_all")
  )

# save the key, do only once
cat("google_key=AIzaSyDFHRqaV4jNPQ2-mT1ytvbFbuirhunq_Rk\n",
    file = file.path(normalizePath("~/"), ".Renviron"),
    append = TRUE)

# retrieve the key, restart R if not found
google_key <- Sys.getenv("google_key")

athl_fun('2837007', trace = FALSE)


myinfo <- get_athlete(stoken, id = '14815281')
head(myinfo)


library(dplyr)

# get activities by date range
my_acts <- get_activity_list(stoken, after = as.Date('2025-05-31'))
act_data <- compile_activities(my_acts) 
act_data$map.summary_polyline

# subset by location
toplo <- act_data %>% 
  filter(sport_type %in% c("Ride", "Run")) %>% 
  filter(start_latlng2 < 10 & start_latlng2 > 5) %>% 
  filter(start_latlng1 < 50 & start_latlng1 > 45) 

get_heat_map(toplo, key = google_key, col = 'darkred', size = 1.5, distlab = F, alpha = 0.6, zoom = 13)
