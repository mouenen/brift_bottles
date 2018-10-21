# frozen_string_literal: true

json.extract! bottle, :id, :created_at, :updated_at
json.url bottle_url(bottle, format: :json)
