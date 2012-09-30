# encoding: utf-8

module X module Lib module Dev
  require 'minitest/autorun'
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib/lib/"+
                    "0x1_lib/toolkit/standard.rb")

  def x__test_datadir_active_ini(s_test_dir, s_lib_file_corename)
    test_datadir_base = x__filej(s_test_dir, s_lib_file_corename)
    test_datadir_source = File.join(test_datadir_base, "source")
    test_datadir_active = File.join(test_datadir_base, "active")
    x__abort_unless_is_a_dir(test_datadir_source, :verbose)
    x__abort_if_is_a_dir(test_datadir_active, :verbose)
    x__dir_copy(test_datadir_source, test_datadir_active)
    @test_datadir_active = test_datadir_active
  end

  def x__test_datadir_active_cleanup()
    if @test_datadir_active and File.directory? @test_datadir_active
      FileUtils.rm_rf @test_datadir_active
    end
  end

  def x__test_and_lib_variables_ini(s_test_file_full, s_lib_dir)
    x__abort_unless_is_a_file(s_test_file_full, :verbose)
    @test_file = File.basename(s_test_file_full)
    @test_dir = File.dirname(s_test_file_full)
    x__abort_unless_is_a_dir(@test_dir, :verbose)
    @lib_file = File.basename(s_test_file_full).sub(/^test_/, '')
    @lib_file_full = x__filej(s_lib_dir, @lib_file)
    x__abort_unless_is_a_file(@lib_file_full, :verbose)
    @lib_file_corename = File.basename(@lib_file).sub(/.rb$/, '')
  end

  def x__test_ini()
    x__test_and_lib_variables_ini(@test_file_full, @lib_dir)
    if @test_datadir_ini
      x__test_datadir_active_ini(@test_dir, @lib_file_corename)
    end
  end

  class TestXLib < MiniTest::Unit::TestCase
    include X::Lib::Toolkit::Standard
    include X::Lib::Dev

    def setup
      x__test_ini()
      x__lib_load_modules([:standard])
    end

    def teardown
      x__test_datadir_active_cleanup()
    end

  end

end end end


# ____________________________________________________________________
# >>>>>  projet epiculture/ec1   >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>#{{{
# Sources, Infos & Contact : http://www.epiculture.org
# Author: Pierre-Maël Crétinon
# License: GNU GPLv3 ( www.epiculture.org/ec1/LICENSE )
# Copyright: 2010-2012 Pierre-Maël Crétinon
# Sponsor: studio Helianova - http://studio.helianova.com
# ――――――――――――――――――――――――――――――――――――――#}}}
# vim: