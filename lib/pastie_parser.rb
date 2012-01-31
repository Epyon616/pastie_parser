module PastieParser
  class Parse
    PASTIE_MATCHER = /^http:\/\/pastie.org/
    GIST_MATCHER = /^https:\/\/gist.github.com/

    def self.pastie_parser(url)
      return "<script src=\"#{url}.js\" type=\"text/javascript\" /></script>"
    end

    def self.gist_parser(url)
      return "<script src=\"#{url}.js\" type=\"text/javascript\" /></script>"
    end

    def self.parse_all(url)
      case
      when url.match(PASTIE_MATCHER)
        
    end
  end
end
