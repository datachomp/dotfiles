
IRB.conf[:SAVE_HISTORY] = 2000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

def rails_environment
  Rails.env
end

if defined?(Rails)
  def colorize(text, color_code); "\e[#{color_code}m#{text}\e[0m"; end
  def red(text); colorize(text, 31); end
  def green(text); colorize(text, 32); end
  def blue(text); colorize(text, 36); end

  prompt = case rails_environment
  when "development"
    green(rails_environment)
  when "production"
    red(rails_environment)
  else
    blue(rails_environment)
  end

  IRB.conf[:PROMPT][:RAILS] = {
    PROMPT_I: "#{prompt}:%03n:%i>",
    PROMPT_N: "#{prompt}:%03n:%i>",
    PROMPT_S: "#{prompt}:%03n:%i*",
    PROMPT_C: "#{prompt}:%03n:%i?",
    RETURN: " => %s\n"
  }

  IRB.conf[:PROMPT_MODE] = :RAILS
end

#IRB.conf[:PROMPT_MODE] = :SIMPLE
#IRB.conf[:AUTO_INDENT] = true
