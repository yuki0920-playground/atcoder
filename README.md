# 競技プログラミングメモ

## 入出力について

### コード

```rb
# 1行で1つの数値
gets.chomp.to_i

# 1行で複数の数値
gets.split.map(&:to_i)

# nで行数を取得し、配列にする
n = gets.chomp.to_i
Array.new(n) { gets.chomp.to_i }
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
- 重複順列(順序あり、重複あり)を返す
  - [Array#repeated_permutation (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/repeated_permutation.html)
  - [Ruby Array の組み合わせ系メソッドまとめ - Qiita](https://qiita.com/shshimamo/items/5a458ecc88e7c24d5112)
- サイズ n の組み合わせをすべて生成
  - [Array#combination (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/combination.html)
- ソート済み配列(reverse はだめ)のインデックスや値を返す
  - [Array#bsearch_index (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/bsearch_index.html)
  - [Array#bsearch (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Array/i/bsearch.html)

### Numeric

- 余りを求める
  - [Numeric#% (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Numeric/i/=25.html)

### Enumerable

- ブロックをグループ分けする
  - [Enumerable#partition (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/partition.html)
  - [Enumerable#group_by (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Enumerable/i/group_by.html)

## ビット全探索

- ビット二項演算子。論理積を計算する
  - [Integer#& (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Integer/i/=26.html)
- bits だけビットを左にシフトします
  - [Integer#<< (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Integer/i/=3c=3c.html)
- bits だけビットを右にシフトする
  - [Integer#>> (Ruby 3.0.0 リファレンスマニュアル)](https://docs.ruby-lang.org/ja/latest/method/Integer/i/=3e=3e.html)

### 処理

#### 王道

```rb
n = 2
# n bit だけビットを左にシフトするので2^n乗
(1 << n).times do |bit|
  puts bit
end

#=> 0 1 2 3
```

```rb
# n bit だけビットを左にシフトするので2^n乗
(1 << n).times do |bit|
  arr = nums.dup

  (0..(n-1)).each do |i|
    # 複合処理
    # bit論理演算結果が0ならば一致すると判断する
    if (bit & (1 << i)) == 0
      # arr[i] ...
    end
  end
end
```

#### repeated 配列利用

```rb
[0, 1].repeated_permutation(n) do |bits|
  arr = nums.dup

  (0..n-1).each do |index|
    if bits[index] == 1
      # arr[index] ...
    end
  end
end
```

## 動的計画法

### テンプレート

- DP 漸化式: dp[i+1]を制約条件ごとに定式化する
  - dp[i][j]とした時、i を個数の制約条件、j をコストの制約条件とする
  - N を値の総数、W をコストの総数にする
- DP 初期条件 dp[0]を 0 なり true で初期化する
- 個数の制限の繰り返し -> 重量等コストの制限の繰り返し、かつ始点と終点を固定化する
- 出力時の添字を定義する

```rb
(1...N).each do |i|
  (0..W).each do |j|
    # do something
  end
end

puts DP[X][Y]
```

### DP 初期化

```rb
# 配列初期化が早い
dp = Array.new(N + 1) { Array.new(W + 1) {0}}


# ハッシュのほうがわかりやすいが遅い
dp = {}
dp = Hash.new { |h,k| h[k] = {} }
```

## 同じものの組み合わせ数

```rb
# 階乗計算
def factorial(n)
  i = 0
  k = 1
  while i < n
    k *= i + 1
    i += 1
  end
  k
end

# 同じものの組み合わせ
def comb(a,b)
  factorial(a) / (factorial(a-b) * factorial(b))
end
```

### 考え方

- 部分問題にどう分割できるかを決める(ノートとペンを使う)
- メモ化して、メモが返す対象の値と遷移に必要な制限(添字)を問題文から抽出する
- 添字をベースに繰り返し処理をする
- メモには、数値だけでなく Bool も可能だが、配列にはしない
- 一部の制限がない場合は、コストなしに遷移できる(個数制限なし部分和問題)
- DP の添字ではなく、DP の値そのものに情報を持たせることがある
