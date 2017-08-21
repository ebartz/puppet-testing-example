# spec/classes/package_spec.pp
require 'spec_helper'

describe 'webserver::init' do

  context 'install httpd' do
    it { should contain_package('httpd')
         .with_ensure('installed')
    }
  end

  context 'install php-mysql' do
    it { should contain_package('php-mysql')
         .with_ensure('installed')
    }
  end

  context 'install php-gd' do
    it { should contain_package('php-gd')
         .with_ensure('installed')
    }
  end

  context 'install php-mbstring' do
    it { should contain_package('php-mbstring')
         .with_ensure('installed')
    }
  end

  context 'install php' do
    it { should contain_package('php')
         .with_ensure('installed')
    }
  end

  context 'install phpmyadmin' do
    it { should contain_package('phpmyadmin')
         .with_ensure('latest')
    }
  end

end
