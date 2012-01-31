# Pastie Parser

Pastie parser is exactly what is says it parses links for Pasties (http://pastie.org) and Gists (http://gists.github.com) and displays them properly on your web page.

## Installation

Nice and simple, in your Gemfile add:

    gem 'pastie_parser'

Run the bundle command and you're good to go.

If you're using this gem outside of a rails application or are simply refusing to use Bundler do the following:

    gem install pastie_parser

## Usage

Once Pastie Parser is installed you'll want to get using it, well this couldn't be simpler if you are using Pasties do the following in your code:

    <%= raw(PastieParser::Parse.pastie_parser(@article.body)) %>

If you prefer to use Gists do the following:

    <%= raw(PastieParser::Parse.gist_parser(@article.body)) %>

Alternatively if you don't want to restrict yourself to one option you can do this:

    <%= raw(PastieParser::Parse.parse_all(@article.body)) %>

Now if you have a Pastie or Gist you would like to be displayed in your text simply add the url (from the address bar) to either the Pastie or the Gist (depending on which you prefer to use) to your text and they will magically appear on the page.

## What should the URLS look like?

For pastie: http://pastie.org/3288805
For Gist: https://gist.github.com/706753

If when using this gem you find any problems please raise it as an issue on here so I can fix it.

Thanks.