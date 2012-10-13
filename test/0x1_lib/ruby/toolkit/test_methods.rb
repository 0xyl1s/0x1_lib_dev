# encoding: utf-8

module X module Lib module Dev module Toolkit module ModulesClassesMethods
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/ruby/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitMethods < TestXLib

    def setup
      @xti = true
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/ruby/toolkit")
      @lib_file = ''
      @test_datadir_suffix = false
      super
    end

    def test_x__method_caller_name_extract
      tested_value = x__method_caller_name_extract("/3eclipses/production/pima/0xyl1s/0x1_lib_dev/test/0x1_lib/ruby/toolkit/test_dirs.rb:103:in `test_x__dir_path_parse_into_array'")
      target_value = "test_x__dir_path_parse_into_array"
      assert_equal target_value, tested_value
    end

    def xlevel2
      x__method_caller_name(2)
    end
    def xlevel1
      xlevel2
    end
    def test_x__method_caller_name
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
