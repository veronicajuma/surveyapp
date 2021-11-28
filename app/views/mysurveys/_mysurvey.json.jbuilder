json.extract! mysurvey, :id, :name, :laptop, :type, :created_at, :updated_at
json.url mysurvey_url(mysurvey, format: :json)
