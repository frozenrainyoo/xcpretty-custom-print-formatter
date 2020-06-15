
class CustomPrintFormatter < XCPretty::Simple

  ERROR_TEXT = 'error: '
  WARNING_TEXT = 'warning: '

  def format_error(message)
    "#{ERROR_TEXT + " " + message}\n"
  end

  def format_compile_error(file, file_path, reason, line, cursor)
    "#{ERROR_TEXT + " "}#{file_path}: #{reason}\n" \
      "#{line}\n#{cursor}\n"
  end

  def format_file_missing_error(reason, file_path)
    "#{ERROR_TEXT + " " + reason} #{file_path}\n"
  end

  def format_compile_warning(file, file_path, reason, line, cursor)
    "#{WARNING_TEXT + ' '}#{file_path}: #{reason}\n" \
      "#{line}\n#{cursor}\n"
  end

  def format_ld_warning(reason)
    "#{WARNING_TEXT + ' ' + reason}"
  end

  def format_undefined_symbols(message, symbol, reference)
    "#{ERROR_TEXT + " " + message}\n" \
      "> Symbol: #{symbol}\n" \
      "> Referenced from: #{reference}\n"
  end

  def format_duplicate_symbols(message, file_paths)
    "#{ERROR_TEXT + " " + message}\n" \
      "> #{file_paths.map { |path| path.split('/').last }.join("\n> ")}\n"
  end

  def format_will_not_be_code_signed(message)
    "#{WARNING_TEXT + " " + message}"
  end

end

CustomPrintFormatter
