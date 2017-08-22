# spec/defines/config_spec.pp
require 'spec_helper'

describe 'webserver::init' do

  it do
    is_expected.to contain_file('/var/www/html/phpmyadmin/config.inc.php').with({
      'ensure' => 'present',
      'owner'  => 'root',
      'mode'   => '0444',
    })
  end

end
