# encoding: utf-8

module X module Lib module Dev module Toolkit module Filesdirs
  require File.join(Dir.home, ".0x1/00mu/00sourcing/0x1_lib_dev/lib/"+
                    "0x1_lib/ruby/dev/dev.rb")
  include X::Lib::Dev

  class TestXLibToolkitDirs < TestXLib

    def setup
      @xti = false
      @test_file_full = File.absolute_path(__FILE__)
      @lib_dir = x__filejsourcing("0x1_lib/lib/0x1_lib/ruby/toolkit")
      @lib_file = ''
      @test_datadir_suffix = ''
      super
    end

    def test_x__is_a_dir?
      skip "untested yet..."
    end

    def test_x__abort_unless_chdir
      skip "untested yet..."
    end

    def test_x__abort_if_is_a_dir
      skip "untested yet..."
    end

    def test_x__abort_unless_is_a_dir
      skip "untested yet..."
    end

    def test_x__user_homedir
      target_value = %x'echo -n "$HOME"'
      tested_value = x__user_homedir()
      assert_equal target_value, tested_value
    end

    def test_x__dir_path_parse_into_array
      x__ti "missing leading slash must trigger a systemexit"
      out, err = capture_io do
        assert_raises SystemExit do
          x__dir_path_parse_into_array('3eclipses/production/pima')
        end
      end
      error_message = /xE: s_dir_fullpath must begin with a slash (.*)\n/
      assert_match err, error_message
      tested_value1 = x__dir_path_parse_into_array('/3eclipses/production/pima/0xyl1s/0x1_lib_dev/test/0x1_lib/toolkit/dirs/source/hierarchy')
      target_value1 = %w[3eclipses production pima 0xyl1s 0x1_lib_dev test 0x1_lib toolkit dirs source hierarchy]
      assert_equal target_value1, tested_value1
      x__ti "must process fullpath with trailing slash too"
      tested_value2 = x__dir_path_parse_into_array('/3eclipses/production/pima/')
      target_value2 = %w[3eclipses production pima]
      assert_equal target_value2, tested_value2
      x__ti "we should be able to compose the path back from the array"
      path3 = '/3eclipses/production/pima'
      array3 = x__dir_path_parse_into_array(path3)
      tested_value3 = "/#{array3.join('/')}"
      assert_equal path3, tested_value3
    end

    def test_x__dir_traverse_path_to_find
      x__ti "xI: should abort unless path is real"
      out, err = capture_io do
        assert_raises SystemExit do
          x__dir_traverse_path_to_find('/bogus/path', 'toolkit')
        end
      end
      error_message = /xE: can't access directory:\n.*\n/
      assert_match out, error_message
      x__ti "xI: should return false if path exists but doesn't contain searched item"
      #refute x__dir_traverse_path_to_find(@test_datadir_active, 'bogus')
    end

    def test_x__dir_list_non_recursive
      skip "untested yet..."
    end

    def test_x__dir_is_empty?
      skip "untested yet..."
    end

    def test_x__dir_ls
      skip "untested yet..."
    end

    def test_x__dir_list_recursive_raw
      skip "untested yet..."
    end

    def test_x__dir_current
      skip "untested yet..."
    end

    def test_x__dir_move
      skip "untested yet..."
    end

    def test_x__abort_unless_dir_move
      skip "untested yet..."
    end

    def test_x__dir_copy
      skip "untested yet..."
    end

    def test_x__dir_readable?
      skip "untested yet..."
    end

    def test_x__dir_writable?
      skip "untested yet..."
    end

    def test_x__mkdir
      skip "untested yet..."
    end

    def test_x__mkdir_p
      skip "untested yet..."
    end

    def test_x__abort_unless_mkdir_p
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
