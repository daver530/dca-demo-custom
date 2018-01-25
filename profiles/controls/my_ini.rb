# encoding: utf-8
# copyright: 2015, The Authors

title 'foo.ini check'


# you add controls here
control 'ini-1.0' do                        # A unique ID for this control
  impact 0.2                                # The criticality, if this control fails.
  title 'Check foo=bar'             # A human-readable title
  desc 'Determine if /opt/foo.ini contains the all important foo=bar'
  describe file('/opt/foo.ini') do                  # The actual test
    its('content') { should match /foo\s=\sbar/ }
  end
end
