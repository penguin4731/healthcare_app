//
//  DataStructure.swift
//  health-plus
//
//  Created by Yo Higashida on 2021/02/28.
//

import Foundation

struct HealthData: Codable {
    var eat: Array<EatData>?
    var run: Array<RunData>?
    var finishTask: Array<Int> = []
}

struct EatData: Codable {
    let type: String
    let genre: String
    let content: String
    let cal: Double
}

struct RunData: Codable {
    let genre: String
    let content: String
    let time: Int
    let cal: Double
}

let taskData = ["同じ時間に起床した", "朝食を同じ時間に食べる", "昼食を同じ時間に食べる", "夕食を同じ時間に食べる", "夕食後のカフェインをとっていない", "今日階段をつかった", "合間にストレッチや筋力トレーニングをした", "350g以上野菜（野菜料理 2皿以上）を食べた", "水分を2L以上に取った"]

let genreEatData = ["基本メニュー", "和食", "洋食", "中華", "デザート/飲み物"]
let contentEatData = [
    "0": ["ご飯1膳軽盛り（100g）", "ご飯1膳普通盛り（140g）", "ご飯1膳大盛り（240g）", "食パン1枚（6枚切り）", "食パン1枚（8枚切り）"],
    "1": ["カツ丼", "親子丼", "天丼", "牛丼", "卵丼", "鉄火丼", "ねぎとろ丼", "中華丼", "鰻重", "五目チラシ", "刺身定食", "あじの塩焼き定食", "ブリの照り焼き定食", "サバのみそ煮定食", "生姜焼き定食", "鶏の照焼定食", "ぞうすい", "梅茶づけ", "天ぷらそば", "ざるそば", "かけそば", "かけそば", "たぬきそば", "きつねうどん", "月見うどん", "焼きそば", "お好み焼き", "広島焼き", "たこやき", "ヒレかつ", "串かつ", "ロースかつ", "カキフライ"],
    "2": ["スパゲッティ ミートソース", "スパゲッティ カルボナーラ", "スパゲッティ ペペロンチーノ", "スパゲッティ 和風ツナおろし", "スパゲッティ タラコ", "スパゲッティ ボンゴレ", "ピザ（小１枚）", "エビグラタン", "チキングラタン", "ポテトグラタン", "ハンバーガー", "チーズバーガー", "フライドポテト（S）", "ビーフカレー", "チキンカレー", "野菜カレー", "かつカレー", "ドライカレー", "ハヤシライス", "エビピラフ", "チキンピラフ", "オムライス", "ドリア", "キノコリゾット", "ハンバーグ", "和風ハンバーグ", "ハンバーグ（デミ）", "照焼ハンバーグ", "サーロインステーキ", "ヒレステーキ", "ロールキャベツ", "チキンソテー"],
    "3": ["ラーメン", "塩ラーメン", "みそラーメン", "五目ラーメン", "チャーシューメン", "冷やし中華", "冷めん", "あんかけかた焼きそば", "あんかけ焼きそば", "焼きビーフン", "麻婆豆腐定食", "青椒肉絲定食", "八宝菜定食", "回鍋肉定食", "エビチリ定食", "麻婆茄子定食", "チャーハン", "五目チャーハン", "ビビンバ", "クッパ", "カニ玉", "酢豚", "みそ炒め", "レバニラ炒め（豚レバー）", "ギョーザ", "シュウマイ", "小龍包", "春巻き", "ちまき", "にら饅頭", "バンバンジー", "肉マン"],
    "4": ["コーヒー", "オレンジジュース", "クリームソーダ", "ミルクティー", "ミルクココア", "カフェ・オレ", "ビール（中ジョッキ）", "ワイン（グラス）", "日本酒（一合）", "焼酎（ロック　グラス）", "グレープフルーツサワー（ジョッキ）", "ウーロンハイ（ジョッキ）", "アイスクリーム", "プリンアラモード", "杏仁豆腐", "コーヒーゼリー", "かぼちゃのタルト", "レアチーズケーキ", "シュークリーム", "チーズケーキ", "ショートケーキ", "ミルフィーユ", "ベリータルト", "チョコレートケーキ", "あんみつ", "みつ豆", "クリームみつ豆", "クリームあんみつ", "白玉あんみつ", "抹茶クリーム白玉ぜんざい", "たいやき", "どらやき", "今川焼（カスタード）", "ところてん", "くずもち", "みたらし団子", "こしあんだ団子", "カステラ（一切）"]
]
let calEatData = [
    "0": [168, 235, 403, 177, 132],
    "1": [893, 731, 805, 909, 630, 649, 786, 841, 754, 618, 489, 480, 646, 687, 789, 776, 336, 171, 459, 284, 324, 376, 382, 419, 570, 553, 633, 270, 310, 372, 439, 299],
    "2": [597, 830, 561, 640, 524, 527, 538, 560, 647, 687, 300, 368, 194, 954, 690, 686, 957, 615, 728, 573, 636, 843, 813, 382, 437, 441, 471, 448, 805, 507, 264, 580],
    "3": [443, 401, 477, 685, 507, 467, 404, 918, 517, 627, 648, 722, 628, 792, 643, 685, 754, 703, 550, 381, 218, 467, 250, 220, 423, 282, 274, 369, 310, 259, 230, 201],
    "4": [7, 82, 137, 68, 137, 68, 137, 68, 196, 71, 140, 88, 185, 146, 238, 103, 196, 219, 125, 136, 343, 297, 209, 281, 292, 448, 397, 352, 247, 189, 295, 353, 260, 428, 211, 256, 197, 17, 184, 118, 131, 160]
]

let genreRunData = ["家事", "育児", "日常生活", "趣味", "仕事", "スポーツ", "音楽"]
let contentRunData = [
    "0": ["掃除機をかける", "皿洗い", "料理", "アイロンかけ", "雪かき", "ゴミ出し", "洗車"],
    "1": ["子どもと遊ぶ(座って)", "子どもと遊ぶ(立って)", "ベビーカーを押す", "着せ替え(座って)", "着せ替え(立って)"],
    "2": ["入浴", "シャワー", "洗顔", "歯磨き", "髭剃り", "階段の昇り降り", "犬の散歩", "読書(座って)", "化粧(座って、または立っての身づくろい)", "庭の水まき", "雑草取り"],
    "3": ["釣り", "ガーデニング", "編み物", "日曜大工"],
    "4": ["デスクワーク", "立ち話", "会議(座って)", "電話で話す(座って)", "電話で話す(立って)"],
    "5": ["ジョギング", "ボーリング", "ダーツ", "ゴルフ(電動カート使用)", "卓球", "テニス", "野球", "サッカー", "水泳/平泳ぎ", "水泳/クロール", "水泳/背泳ぎ", "水泳/バタフライ", "サーフィン", "スキューバダイビング", "シュノーケリング", "スキー", "アイススケート", "柔道", "太極拳"],
    "6": ["ピアノ", "ギター", "ドラム", "トランペット"]
]
let calRunData = [
    "0": [0.04444444444, 0.04, 0.02148148148, 0.04, 0.07037037037, 0.04444444444, 0.07851851852],
    "1": [0.0437037037, 0.04888888889, 0.0437037037, 0.05333333333, 0.06222222222],
    "2": [0.03555555556, 0.03555555556, 0.04444444444, 0.04444444444, 0.04444444444, 0.07777777778, 0.06148148148, 0.06148148148, 0.04333333333, 0.02666666667, 0.07851851852],
    "3": [0.07, 0.08740740741, 0.02592592593, 0.07888888889],
    "4": [0.03148148148, 0.03111111111, 0.0262962963, 0.02666666667, 0.03111111111],
    "5": [0.1222222222, 0.1222222222, 0.0437037037, 0.06148148148, 0.06148148148, 0.1222222222, 0.08740740741, 0.1224691358, 0.1755555556, 0.14, 0.14, 0.1933333333, 0.05259259259, 0.1222222222, 0.1222222222, 0.1748148148, 0.07037037037],
    "6": [0.04333333333, 0.03555555556, 0.07, 0.04333333333]
]
