arr1 = [] # csvの最初の読み込み先
File.open("./var/log/httpd/access_log", mode = "rt"){|f|
    f.each_line{|line|
    arr1 << line
    }
}

arr2 = [] # 読み込む際に生じる\と改行文字を削除
arr1.each{|element| arr2 << element.split('\\') }
arr3 =[] # 必要のないものを正規表現で削る
arr2.flatten.each{|element| arr3 << element.gsub(/\\/) { '' }}
