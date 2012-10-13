# encoding: utf-8

module X module Lib module Dev module Toolkit module Online
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/ruby/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitOnline < TestXLib

    def setup
      @xti = true
      @xmodules2load = [:standard, :online]
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/ruby/toolkit")
      @lib_file = ''
      @test_datadir_suffix = false
      super
    end

    def test_x__online
      skip
      puts x__online
      tested_value = xlevel1
      target_value = 'test_x__method_caller_name'
      assert_equal target_value, tested_value
    end

  end

end end end end end

# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim:
