# frozen_string_literal: true

# Vagrant などで Request origin not allowed が返ってきたときの対応
ActionCable.server.config.disable_request_forgery_protection = true
