# 競技プログラミングメモ

## 入出力について

### コード

```rb
# 1行で1つの数値
gets.chomp.to_i

# 1行で複数の数値
gets.chomp.split(' ').map(&:to_i)

# n行で1つの数値
(1..n).map { |_n| gets.chomp.to_i }
```

### ポイント

- 数値だからといって必ずしも Integer 等に変換しなくて良い、String のまま扱かった方が楽な場合もある

## 各種便利メソッド

### string

[String# (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/=5b=5d.html)
[String#match? (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/match=3f.html)
[String#match (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/match.html)
[String#scan (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/scan.html)
[String#delete_suffix (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/delete_suffix.html)
[String#end_with? (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/end_with=3f.html)
