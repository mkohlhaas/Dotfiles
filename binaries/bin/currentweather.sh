#!/usr/bin/env bash

# Result file
current_weather_file=~/.currentweather

# URL fragments
city=Pforzheim
app_id=c5b3d13b77163a2cfea0c58dcf29ca81
de="&lang=de"
base_url="http://api.openweathermap.org/data/2.5/weather?q=$city&units=metric&appid=$app_id"

# Weather data
weather_desc_en=$(curl -s $base_url | jq '.weather[0].main')
weather_desc_en=${weather_desc_en:1:-1}  # remove quotes
weather_desc_de=$(curl -s $base_url$de | jq '.weather[0].description')
weather_desc_de=${weather_desc_de:1:-1}  # remove quotes
temperature=$(curl -s $base_url | jq '.main.temp')
temperature=${temperature%.*}

case $weather_desc_en in
    "Clear") weather_symbol=" " ;;
    "Clouds") weather_symbol=" " ;;
    "Snow") weather_symbol=" " ;;
    "Rain") weather_symbol=" " ;;
    "Drizzle") weather_symbol=" " ;;
    "Thunderstorm") weather_symbol=" " ;;
    "Mist") weather_symbol=" " ;;
    "Smoke") weather_symbol=" " ;;
    "Haze") weather_symbol=" " ;;
    "Fog") weather_symbol=" " ;;
    "Sand") weather_symbol=" " ;;
    "Dust") weather_symbol=" " ;;
    "Squall") weather_symbol=" " ;;
    "Tornado") weather_symbol=" " ;;
esac

echo $weather_symbol $weather_desc_de $temperature°C > $current_weather_file
