# encoding: utf-8

module X module Lib module Dev module Toolkit module Xutils
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitXutils < TestXLib

    def setup
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/toolkit")
      @test_datadir_ini = false
      super
    end

    def test_x__
      assert_equal('0xyl1s α --', x__)
    end

    def test_x__user_homedir
      assert_equal(`echo -n $HOME`, x__user_homedir())
    end

    def test_x__is_a_string?
      assert(x__is_a_string?('a'))
      refute(x__is_a_string?(2))
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
