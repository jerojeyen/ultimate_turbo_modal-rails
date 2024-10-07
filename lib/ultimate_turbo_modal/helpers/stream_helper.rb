# frozen_string_literal: true

module UltimateTurboModal::Helpers
  module StreamHelper
    def utmodal(message)
      case message.to_s.downcase.to_sym
      when :close, :hide
        turbo_stream_action_tag "utmodal", message: "hide"
      else
        raise ArgumentError, "Unknown utmodal message: #{message}"
      end
    end
  end
end
