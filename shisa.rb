 class Shisa
  def action(count, country)
    if count == 1
      puts "***#{count}ターン目***"
      input = first_turn(country)
      validate(input)
    else
      Timeout.timeout(20) {|lim| "Time limit = #{lim}" }
      begin
        Timeout.timeout(20) do
          puts "***#{count}ターン目***"
          input = turn(country)
          win if country.word_end?(input) || country.duplicate?
        end
      rescue Timeout::Error
        timeout
      end
    end
  end

  private

  def first_turn(country)
    input = country.begin
    puts "シーサー: #{input}"
    puts "=" * 40
    input
  end

  def validate(input)
    last_char = input[-1] == "ン"
    if last_char
      sleep 1.0
      puts "語尾が「ン」で終わっています。"
      win
    end
  end

  def turn(country)
    puts "シーサー考え中、、、"
    print "シーサー: "
    sleep(rand(1..22))
    input = country.choose
    win if input.nil?
    puts "#{input}"
    puts "=" * 40
    input
  end

  def win
    sleep 1.0
    puts "あなたの勝ちです！"
    puts "=" * 40
    exit
  end

  def timeout
    puts "ターイムアウト!"
    win
  end
end