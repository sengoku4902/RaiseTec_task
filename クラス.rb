class Communication
  def greet
    puts "Hello"
  end

  def workplace
    puts "「ここは職場だな？　YES/NOで答えろ。」"
    case workplace_answer = gets.chomp
    when workplace_answer = "yes"
         puts "「おはようございます。」"
    when workplace_answer = "no"
         puts "......"
    else
         puts "【もう一度だ……顔を洗って出直してこい……】"
         workplace
      end
    end

  def encounter
    puts "==================================="
    puts "==================================="
    puts "【あなたが街中で散歩をしていると見知らぬ男性から声をかけられました。】"
    puts "？「やぁ、ひさしぶりだね。」"
    puts "【あなたは今声をかけた人が誰なのか覚えていません。次の選択肢から該当人物を選び数字で答えてください】"
    puts "1:同級生 2:姉の旦那 3:取引先"

    case @answer = gets.chomp
    when @answer = "1"
       puts "私「お、ひっさしぶりー！」"
       puts "相手「きみ、誰かと勘違いしとらんかね？」"
    when @answer = "2"
       puts "私「おにいさんご無沙汰してます」"
       puts "相手「私は君のおにいさんではない！誰かと勘違いしとらんかね？」"
    when @answer = "3"
       puts "私「先日はお世話になりました。」"
       puts "相手「きみ、誰かと勘違いしとらんかね？」"
     else
       lupin = Error.new
       lupin.lupinerror
      end
    end

    class Error < StandardError
    def lupinerror
    begin
      if @answer =! "同級生" || "姉の旦那" || "取引先"
       raise RuntimeError,"曲：ルパン三世のテーマ"
     end
      rescue => e
           puts "？？「ばっかもーーーーん！！！そいつがルパンだーーーーーー！！！」"
           puts e
         end
        end
      end

       class Playground < Communication
       end
end

greeting = Communication.new
greeting.greet
greeting.workplace
greeting.encounter
