Geocoder.configure(
  lookup: :google,              # name of geocoding service (symbol)
  api_key: ENV['GOOGLE_MAP_KEY'], # API key for geocoding service
)