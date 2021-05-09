# 競技プログラミングメモ

## 入出力について

### コード

```rb
# 1行で1つの数値
gets.chomp.to_i

# 1行で複数の数値
gets.chomp.split(' ').map(&:to_i)

# nで行数を取得し、配列にする
n = gets.chomp.to_i
(1..n).map { |_n| gets.chomp.to_i }
```

### ポイント

- 数値だからといって必ずしも Integer 等に変換しなくて良い、String のまま扱かった方が楽な場合もある
- 組み合わせは計算したほうが楽。
  - x 個から 2 通りならば `(x \* (x - 1))/2`

## 各種便利メソッド

### String

- 任意の文字列を返す返す
  - [String# (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/=5b=5d.html)
- 文字列のマッチ結果を bool で返す
  - [String#match? (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/match=3f.html)
- 正規表現のマッチ結果を配列で返す
  - [String#scan (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/scan.html)
    [String#delete_suffix (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/delete_suffix.html)
- 末尾が strs のいずれかであるとき true を返す
  - [String#end_with? (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/String/i/end_with=3f.html)

### Array

- 任意の組み合わせを生成する
  - [Array#combination (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/combination.html)
- bit の順列を返す
  - [Array#repeated_permutation (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/repeated_permutation.html)

### Numeric

- 余りを求める
  - [Numeric#% (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Numeric/i/=25.html)
