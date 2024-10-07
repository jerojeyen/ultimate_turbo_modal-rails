# frozen_string_literal: true

module UltimateTurboModal::Helpers
  module ControllerHelper
    extend ActiveSupport::Concern

    def inside_modal?
      request.headers["Turbo-Frame"] == "utmodal"
    end

    included do
      helper_method :inside_utmodal?
    end
  end
end
