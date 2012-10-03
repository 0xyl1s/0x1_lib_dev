# encoding: utf-8

module X module Lib module Dev module Toolkit module Filesdirs
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitFilesdirs < TestXLib

    def setup
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/toolkit")
      @lib_file = ''
      @test_datadir_suffix = 'filesdirs'
      super
    end

    def test_x__rel_abs_path
      rel_path = 'filesdirs/active'
      tested_value = x__rel_abs_path(Dir.pwd, rel_path)
      target_value = File.absolute_path %x'(cd #{rel_path} ; pwd)'.chomp
      assert_equal target_value, tested_value
    end

    def test_x__home_path
      skip "untested yet..."
    end

    def test_x__rel_xsourcing_path
      skip "untested yet..."
    end

    def test_x__abort_unless_rel_abs_path
      rel_path = './filesdirs/active'
      ref_dir = File.absolute_path %x'(cd #{rel_path} ; pwd)'.chomp

      tested_value = x__abort_unless_rel_abs_path(@test_dir, rel_path, :verb)
      assert_equal ref_dir, tested_value

      assert_raises SystemExit do
        bogus_dir = './bogus'
        x__abort_unless_rel_abs_path(@test_dir, bogus_dir)
      end
    end

    def test_x__files_list_filtered
      skip "untested yet..."
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
