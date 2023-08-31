
initial_row = 3

def parse_file
  all_file = Dir.glob('*').sort
  div, mod = all_file.size.divmod(initial_row)
  total_row = (mod == 0) ? div : (div + 1)
  width = all_file.max { |a, b| a.length <=> b.length }.size + 7
  [all_file, total_row, width]
end

def ls_v1(all_file, total_row, width)
  all_sort_file = all_file.each_slice(total_row).to_a
  total_row.times do |row|
    initial_row.times do |col|
      file_name = all_sort_file[col][row]
      print file_name.ljust(width) unless file_name.nil?
    end
    puts
  end
end

all_file, total_row, width = parse_file

ls_v1(all_file, total_row, width)

def ls_v2(all_file, total_row, width)
  grouped_files = all_file.map.with_index do |file, idx|
    [idx % total_row, file]
  end.sort.each_slice(initial_row).to_a

  total_row.times do |row|
    initial_row.times do |col|
      file_name = all_sort_file[row][col]
      print file_name.ljust(width) unless file_name.nil?
    end
    puts
  end
end

ls_v2(all_file, total_row, width)
