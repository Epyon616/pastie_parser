module PastieParser
  class Parse
    PASTIE_MATCHER = /^http:\/\/pastie.org/
    GIST_MATCHER = /^https:\/\/gist.github.com/

    def self.parse(text)
      url = text.split
      array = Array.new
      
      url.each do |u|
        case
        when u.match(PASTIE_MATCHER)
          array << u.gsub(u,"<script src=\"#{u}.js\" type=\"text/javascript\"></script>")
        when u.match(GIST_MATCHER)
          array << u.gsub(u,"<script src=\"#{u}.js\" type=\"text/javascript\"></script>")
        else
          array << u
        end
      end
      
      parsed_text = array.join(" ")
      return parsed_text
    end
  end
end
