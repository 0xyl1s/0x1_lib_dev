# encoding: utf-8

module X module Lib module Dev module Toolkit module Filesdirs
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitFilesdirs < TestXLib
      TESTOPTS = "-v"

    def setup
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/toolkit")
      @lib_file = ''
      @test_datadir_suffix = 'filesdirs'
      super
    end

    def test_x__file_read
      target_value = "gen\neral\n"
      tested_value = x__file_read("#{@test_datadir_active}/file1")
      assert_equal target_value, tested_value
    end

    def test_x__file_read_chomp
      target_value = "gen\neral"
      tested_value = x__file_read_chomp("#{@test_datadir_active}/file1")
      assert_equal target_value, tested_value
    end

    def test_x__file_readlines
      target_value = ["gen\n", "eral\n"]
      tested_value = x__file_readlines("#{@test_datadir_active}/file1")
      assert_equal target_value, tested_value
      bogus_file = "/bogus/file"
      out, err = capture_io do
        assert_raises SystemExit do
          x__file_readlines(bogus_file, :verb)
        end
      end
      error_message = "Can't read #{bogus_file}\n"
      assert_equal error_message, out
    end

    def test_x__file_readlines_minus_comment_lines
      target_value = ["line1\n", "line2\n", "line3 with # inside\n",
        "    line4\n", "    line5 {\n", "    line6\n", "    }\n", "\n"]
      tested_value = x__file_readlines_minus_comment_lines(\
                       "#{@test_datadir_active}/file_with_comment_lines")
      assert_equal target_value, tested_value
      # test with customized comment_character, // instead of defalut #
      target_value2 = ["line1\n", "line2\n", "line3 with // inside\n",
        "    line4\n", "    line5 {\n", "    line6\n", "    }\n", "\n"]
      tested_value2 = x__file_readlines_minus_comment_lines(\
                       "#{@test_datadir_active}/file_with_comment_lines2", '//')
      assert_equal target_value2, tested_value2
    end

    def test_x__file_save_unsecured
      skip "untested yet..."
    end

    def test_x__file_save_nl
      skip "untested yet..."
    end

    def test_x__tempfilename_generate
      skip "untested yet..."
    end

    def test_x__file_save
      skip "untested yet..."
    end

    def test_x__file_overwrite
      skip "untested yet..."
    end

    def test_x__file_write
      skip "untested yet..."
    end

    def test_x__abort_unless_file_write
      skip "untested yet..."
    end

    def test_x__file_write_binary
      skip "untested yet..."
    end

    def test_x__file_puts
      skip "untested yet..."
    end

    def test_x__file_chmod
      skip "untested yet..."
    end

    def test_x__file_move
      skip "untested yet..."
    end

    def test_x__is_a_file?
      skip "untested yet..."
    end

    def test_x__abort_unless_is_a_file
      skip "untested yet..."
    end

    def test_x__is_a_regular_file?
      skip "untested yet..."
    end

    def test_x__file_absolute_path
      skip "untested yet..."
    end

    def test_x__file_type
      skip "untested yet..."
    end

    def test_x__file_readable?
      skip "untested yet..."
    end

    def test_x__file_writable?
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
