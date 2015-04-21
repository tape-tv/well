require 'oga'

RSpec::Matchers.define :match_html do |expected|
  match do |actual|
    inspect_actual = Oga.parse_html(actual.strip).inspect
    inspect_expected = Oga.parse_html(expected.gsub(/\n\s{2,}/, '').strip).inspect
    inspect_actual == inspect_expected
  end
end
