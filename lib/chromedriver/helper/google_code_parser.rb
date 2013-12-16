require 'nokogiri'

module Chromedriver
  class Helper
    class GoogleCodeParser
      attr_reader :xml

      def initialize xml
        @xml= xml
      end

      def downloads
        doc = Nokogiri::XML xml
        doc.search("Contents Key").collect {|_| _.content}
      end
    end
  end
end
