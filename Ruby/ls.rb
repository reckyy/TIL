# frozen_string_literal: true

def parse_file
  Dir.glob('*').sort
end

def calculate_row_and_space(all_files)
  div, mod = all_files.size.divmod(INITIAL_COLUMN)
  total_row = mod.zero? ? div : (div + 1)
  width = all_files.max_by(&:length).length + 7
  [total_row, width]
end

INITIAL_COLUMN = 3
all_files = parse_file
total_row, width = calculate_row_and_space(all_files)

def ls(all_files, total_row, width)
  all_sort_file = all_files.each_slice(total_row).to_a
  total_row.times do |col|
    initial_row.times do |row|
      file_name = all_sort_file[row][col]
      print file_name.ljust(width) unless file_name.nil?
    end
    puts
  end
end

ls(all_files, total_row, width)
