module Pushr
  module Daemon
    class DeliveryError < StandardError
      attr_reader :code, :message, :description, :source, :notify

      def initialize(code, message, description, source, notify = true)
        @code = code
        @message = message
        @description = description
        @source = source
        @notify = notify
      end

      def message
        "Unable to deliver message #{@message_id}, received #{@source} error #{@code} (#{@description})"
      end
    end
  end
end
